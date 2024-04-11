// ignore_for_file: must_be_immutable, camel_case_types

part of 'membership_bloc.dart';

abstract class MembershipEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetMembershipRequest extends MembershipEvent {
  GetMembershipRequest();

  @override
  List<Object> get props => [];
}
