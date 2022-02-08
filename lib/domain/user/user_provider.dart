import 'package:get/get.dart';

// const host = "http://127.0.0.1:8080";
const host = "http://192.168.137.1:8080";

// 통신
class UserProvider extends GetConnect {
  // Promise (데이터 약속)
  Future<Response> login(Map data) => post("$host/login", data);
}
