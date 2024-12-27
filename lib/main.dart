import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/feature/ui/widget/juice_glass.dart';
import 'package:shopping/feature/ui/widget/bottomnavbar.dart';
import 'package:shopping/feature/ui/screen/home/home_import.dart';
import 'package:shopping/feature/ui/screen/signup/signup_import.dart';
import 'package:shopping/feature/ui/screen/splash/splash_import.dart';
import 'package:shopping/feature/ui/screen/welcome/welcome_import.dart';
import 'package:shopping/feature/ui/screen/products/products_import.dart';
import 'package:shopping/feature/ui/screen/signup/bloc/signup_cubit.dart';
import 'package:shopping/feature/ui/screen/products/bloc/product_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ProductsScreen(),
      ),
    );
  }
}
