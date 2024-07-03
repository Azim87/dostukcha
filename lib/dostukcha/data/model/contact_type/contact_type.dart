import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_type.freezed.dart';

part 'contact_type.g.dart';

@freezed
class ContactType with _$ContactType {
  const factory ContactType({
    @JsonKey(name: 'Id') final int? id,
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'OrderNum') final int? orderNum,
    @JsonKey(name: 'BlockNum') final int? blockNum,
  }) = _ContactType;

  factory ContactType.fromJson(Map<String, dynamic> json) => _$ContactTypeFromJson(json);
}
