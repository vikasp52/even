import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  const factory History({
    required int id,
    required String serviceType,
    required String name,
    String? recommendedBy,
    required String address,
    required String hospitalImage,
    required List<String> documents,
    required String feedback,
    required String time,
    required String day,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
