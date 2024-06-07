import 'package:flutter/material.dart';
import 'package:flutter_core/config/app_logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    logger.d('message debug');
    logger.e('message error');
    logger.f('message fatal');
    logger.i('message info');
    logger.t('message trace');
    logger.w('message warning');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My home page'),
      ),
    );
  }
}
