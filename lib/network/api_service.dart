import 'package:retrofit/http.dart';
// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:viata/logging.dart';
import 'package:viata/models/disease.dart';
import 'package:viata/models/food.dart';
import 'package:viata/models/treatment.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'http://viata.sixeyes-tech.com/api/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/diseases')
  Future<List<Disease>> getDiseaseList();

  @GET('/treatments')
  Future<List<Treatment>> getTreatmentList();

  @GET('/foods')
  Future<List<Food>> getFoodList();

  static ApiService create() {
    final dio = Dio();
    dio.interceptors.add(LoggingInterceptor());
    dio.options.headers["Accept"] = "application/json";
    return ApiService(dio);
  }
}
