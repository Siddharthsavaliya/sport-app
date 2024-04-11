import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership.freezed.dart';
part 'membership.g.dart';

@freezed
abstract class Membership with _$Membership {
  const factory Membership({
    required String planType,
    required double price,
  }) = _Membership;
  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);
}

List<Membership> buildPlanListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Membership.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
