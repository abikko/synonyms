import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.I;

initGetIt() {
  getIt.registerLazySingleton<Dio>(() => Dio(
        BaseOptions(
          baseUrl: "https://wordsapiv1.p.rapidapi.com/",
          headers: {
            'x-rapidapi-key': '05903a9e51msh89b1356f250fe83p14b7dajsn2e94f3d3396e',
            'x-rapidapi-host': 'wordsapiv1.p.rapidapi.com'
          }
        ),
      ));
}
