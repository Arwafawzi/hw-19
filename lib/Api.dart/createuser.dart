import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_11/Api.dart/API.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
Future<Response> createUser({required Map body}) async {
  try {
    var url = Uri.http(ApiALi().url, ApiALi().createAccount);
    var response = await http.post(url, body: json.encode(body));
    return response;
  } on HttpException catch (error) {
    return Response(error.message, 111);
  } on ClientException catch (error) {
    return Response(error.message, 111);
  } on ArgumentError catch (error) {
    return Response(error.message, 111);
  } catch (error) {
    return Response(error.toString(), 111);
  }
}
Future<Response> loginUser({required Map body}) async {
  try {
    var url = Uri.http(ApiALi().url, ApiALi().loginUser);
    var response = await http.post(url, body: json.encode(body));
    return response;
  } on HttpException catch (error) {
    return Response(error.message, 111);
  } on ClientException catch (error) {
    return Response(error.message, 111);
  } on ArgumentError catch (error) {
    return Response(error.message, 111);
  } catch (error) {
    return Response(error.toString(), 111);
  }
}