part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.message = " ",
    this.isVerifyOto = false,
    this.resendOtp = false,
    this.initial = false,
    this.status = Status.initial,
    this.institutionIds = const [],
    this.cities = const [],
  });
  final String message;
  final Status status;
  final bool isVerifyOto;
  final bool initial;
  final bool resendOtp;
  final List<Institution> institutionIds;
  final List<dynamic> cities;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      resendOtp,
      cities,
      isVerifyOto,
      resendOtp,
      institutionIds,
    ];
  }

  SignUpState copyWith({
    String? message,
    Status? status,
    List<Institution>? institutionIds,
    List<dynamic>? cities,
    bool? isVerifyOto,
    bool? resendOtp,
    bool? initial,
  }) {
    return SignUpState(
      message: message ?? this.message,
      status: status ?? this.status,
      cities: cities ?? this.cities,
      resendOtp: resendOtp ?? this.resendOtp,
      isVerifyOto: isVerifyOto ?? this.isVerifyOto,
      initial: initial ?? this.initial,
      institutionIds: institutionIds ?? this.institutionIds,
    );
  }
}
