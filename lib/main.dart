import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/core/utlis/colors.dart';
import 'package:valorant_app/core/utlis/web_service.dart';
import 'package:valorant_app/cubit/app_cubit.dart';
import 'package:valorant_app/data/repos/repo_imp.dart';
import 'package:valorant_app/view/screens/HomeScreen.dart';
import 'package:valorant_app/view/screens/agents_view/agent_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(RepoImp(ApiService(Dio())))..getAgents(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.homecolorr,
            elevation: 0
          ),
          primaryColor: AppColors.kPinkColor,
          primaryColorDark: AppColors.kPinkColor,
          // colo
          scaffoldBackgroundColor: AppColors.homecolorr,
          brightness: Brightness.dark,
          fontFamily: 'valorant'
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

