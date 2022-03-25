import 'package:even/screens/my_history/animation/custom_page_transition.dart';
import 'package:flutter/material.dart';

class RipplePageTransition extends StatefulWidget {
  RipplePageTransition({
    Key? key,
    required this.widgetKey,
  }) : super(key: key);

  final GlobalKey widgetKey;
  final _state = _RipplePageTransitionState();

  void navigateTo(Widget page) => _state.startSpreadOutAnimation(page);

  @override
  _RipplePageTransitionState createState() => _state;
}

class _RipplePageTransitionState extends State<RipplePageTransition> {
  Widget? _page;
  Rect? _originalWidgetRect;
  Rect? _pageTransitionRect;

  void startSpreadOutAnimation(Widget page) {
    if (!mounted) {
      return;
    }

    setState(() {
      _page = page;
      _originalWidgetRect = _getWidgetRect(widget.widgetKey)!;
      _pageTransitionRect = _originalWidgetRect;
    });

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }

      final fullScreenSize = 1.3 * MediaQuery.of(context).size.longestSide;

      setState(() {
        _pageTransitionRect = _pageTransitionRect?.inflate(fullScreenSize);
      });
    });
  }

  void _startShrinkInAnimation() =>
      setState(() => _pageTransitionRect = _originalWidgetRect);

  Rect? _getWidgetRect(GlobalKey globalKey) {
    var renderObject = globalKey.currentContext?.findRenderObject();
    var translation = renderObject?.getTransformTo(null).getTranslation();
    var size = renderObject?.semanticBounds.size;

    if (translation != null && size != null) {
      return Rect.fromLTWH(
        translation.x,
        translation.y,
        size.width,
        size.height,
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_pageTransitionRect == null) {
      return const SizedBox.shrink();
    }

    return AnimatedPositioned.fromRect(
      rect: _pageTransitionRect!,
      duration: const Duration(milliseconds: 500),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff004cff),
        ),
      ),
      onEnd: () {
        bool shouldNavigatePage = _pageTransitionRect != _originalWidgetRect;
        if (shouldNavigatePage) {
          Navigator.push(
            context,
            CustomPageTransition(page: _page!),
          ).then((_) {
            _startShrinkInAnimation();
          });
        } else {
          if (!mounted) {
            return;
          }

          // Dismiss ripple widget after shrinking finishes.
          setState(() => _pageTransitionRect = null);
        }
      },
    );
  }
}
