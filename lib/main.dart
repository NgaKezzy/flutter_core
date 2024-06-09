import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/config/app_logger.dart';
import 'package:flutter_core/home_page.dart';
import 'package:flutter_core/net_work/api_service.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
