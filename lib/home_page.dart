import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/config/app_logger.dart';
import 'package:flutter_core/net_work/api_service.dart';
import 'package:flutter_core/net_work/rest_api.dart';
import 'package:retrofit/retrofit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> makeApiRequest() async {
    final restApi =
        RestClient(Dio(BaseOptions(contentType: 'application/json')));
    try {
      final response = await restApi.getPosts();
      print(response);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              makeApiRequest();
            },
            child: const Text('submit')),
      ),
    );
  }
}
