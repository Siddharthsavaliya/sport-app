import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_app/model/faq_model/faq_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/common_repository.dart';

part 'common_state.dart';
part 'common_event.dart';

class CommonBloc extends Bloc<CommonEvent, CommonState> {
  CommonBloc() : super(const CommonState()) {
    on<GetFaqEvent>(_getFaqEvent);
    on<HelpEvent>(_helpEvent);
  }
  final CommonRepository _commonRepository = CommonRepository();

  Future<void> _getFaqEvent(
      GetFaqEvent event, Emitter<CommonState> emit) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    final result = await _commonRepository.getFeq();

    result.when(
      success: (data) {
        emit(state.copyWith(
          status: Status.loaded,
          faqList: data,
        ));
      },
      failure: (error) {
        emit(state.copyWith(message: error, status: Status.failed));
      },
    );
  }

  Future<void> _helpEvent(HelpEvent event, Emitter<CommonState> emit) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    final result = await _commonRepository.help(event.type, event.text);
    result.when(
      success: (data) {
        emit(state.copyWith(
          status: Status.loaded,
        ));
      },
      failure: (error) {
        emit(state.copyWith(message: error, status: Status.failed));
      },
    );
  }
}
