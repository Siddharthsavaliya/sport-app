import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/api_result/api_result.dart';
import 'package:sport_app/model/tournament_detail_model/tournament_detail_model.dart';
import 'package:sport_app/model/tournament_model/tournament_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/utils/helper.dart';

class TournamentRepository {
  ApiClient apiClient = ApiClient();

  Future<ApiResult<List<Tournament>>> getTournament(String type) async {
    try {
      final response = await apiClient
          .get(ApiConstants.tournament, queryParameters: {"status": type});
      return ApiResult.success(buildTournamentListFromResponse(response.data!));
    } catch (e) {
      return getErrorMessage(e);
    }
  }

  Future<ApiResult<TournamentDetailModel>> getMatches(
      String id, String type) async {
    // try {
    final response = await apiClient
        .get("${ApiConstants.matches}$id", queryParameters: {"status": type});
    return ApiResult.success(TournamentDetailModel.fromJson(response.data!));
    // } catch (e) {
    //   return getErrorMessage(e);
    // }
  }

  Future<ApiResult<List<Team>>> getTeams(String id) async {
    // try {
    final response = await apiClient.get(
      "${ApiConstants.teams}$id",
    );
    return ApiResult.success(buildTeamListFromResponse(response.data!));
    // } catch (e) {
    //   return getErrorMessage(e);
    // }
  }
}
