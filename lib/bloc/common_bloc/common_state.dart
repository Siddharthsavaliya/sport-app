// ignore_for_file: must_be_immutable
part of 'common_bloc.dart';

class CommonState extends Equatable {
  const CommonState({
    this.message = " ",
    this.url = "",
    this.status = Status.initial,
    this.faqList = const [],
  });
  final String message;
  final String url;
  final Status status;
  final List<FaqModel> faqList;

  @override
  List<Object?> get props {
    return [status, message, url, faqList];
  }

  CommonState copyWith({
    String? message,
    Status? status,
    String? url,
    List<FaqModel>? faqList,
  }) {
    return CommonState(
      message: message ?? this.message,
      status: status ?? this.status,
      url: url ?? this.url,
      faqList: faqList ?? this.faqList,
    );
  }
}
