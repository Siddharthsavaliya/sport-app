import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sport_app/model/membership/membership.dart';

part 'my_purchase.freezed.dart';
part 'my_purchase.g.dart';

@freezed
abstract class MyPurchase with _$MyPurchase {
  factory MyPurchase({
    String? id,
    Membership? subscriptionPlan,
    DateTime? purchaseDate,
    String? user,
  }) = _MyPurchase;

  factory MyPurchase.fromJson(Map<String, dynamic> json) =>
      _$MyPurchaseFromJson(json);
}

List<MyPurchase> buildMyPurchaseListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => MyPurchase.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
