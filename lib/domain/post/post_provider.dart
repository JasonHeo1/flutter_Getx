import 'package:flutter_blog/util/jwt.dart';
import 'package:get/get.dart';
import 'package:flutter_blog/util/config.dart';

// const host = "http://192.168.137.1:8080";
// const host = "http://127.0.0.1:8080";

// 통신
class PostProvider extends GetConnect {
  // Promise (데이터 약속)
  Future<Response> findAll() =>
      get("$host/post", headers: {"Authorization": jwtToken ?? ""});

  Future<Response> findById(int id) =>
      get("$host/post/$id", headers: {"Authorization": jwtToken ?? ""});

  Future<Response> deleteById(int id) =>
      delete("$host/post/$id", headers: {"Authorization": jwtToken ?? ""});

  Future<Response> updateById(int id, Map data) =>
      put("$host/post/$id", data, headers: {"Authorization": jwtToken ?? ""});

  Future<Response> save(Map data) =>
      post("$host/post", data, headers: {"Authorization": jwtToken ?? ""});
}
