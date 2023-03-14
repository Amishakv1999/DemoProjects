import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchCall {
  static Future<ApiCallResponse> call({
    String? query = 'deadpool',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'search',
      apiUrl:
          'https://api.themoviedb.org/3/search/movie?api_key=c5f91272e8db79e3deb27701f18d2894&language=en-US&query=${query}&page=1&include_adult=false',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

//
class NowPlayingCall {
  static Future<ApiCallResponse> call({
    String? query = 'deadpool',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Now Playing',
      apiUrl:
      'https://api.themoviedb.org/3/movie/now_playing?api_key=c5f91272e8db79e3deb27701f18d2894&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

//
//
class OnTvCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ontv',
      apiUrl:
      'https://api.themoviedb.org/3/tv/[tv_id]?api_key=c5f91272e8db79e3deb27701f18d2894&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
    );
  }
}
//

class PopularCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'popular',
      apiUrl:
          'https://api.themoviedb.org/3/movie/top_rated?api_key=c5f91272e8db79e3deb27701f18d2894&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
