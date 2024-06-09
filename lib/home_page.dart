import 'package:flutter/material.dart';
import 'package:flutter_core/config/app_logger.dart';
import 'package:flutter_core/net_work/api_service.dart';

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
    print('call api ne');
    try {
      final response = await APIService.instance.request(
        '/posts/1',
        DioMethod.get,
        contentType: 'application/json',
      );

      if (response.statusCode == 200) {
        logger.f(response.data);
      } else {
        print('API call failed: ${response.statusMessage}');
      }
    } catch (e) {
      print('Network error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              makeApiRequest();
            },
            child: Text('submit')),
      ),
    );
  }
}
