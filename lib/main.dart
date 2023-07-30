import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/helper/dependencies.dart';
import 'app/routes/routes.dart';
import 'app/ui/pages/home/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.initial,
        getPages: AppRoutes.routes,
        home: HomeMain());
  }
}
