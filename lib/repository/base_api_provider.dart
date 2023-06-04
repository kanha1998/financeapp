
import 'package:dio/dio.dart';

class BaseApiProvider
{

  Dio? apiClient;
  BaseApiProvider()
  {
   apiClient=Dio();
  }

}