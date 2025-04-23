import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:clone_blinkit/screens/logic/search_cubit/search_cubit_cubit.dart';
import 'package:clone_blinkit/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SearchCubit())],

      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
        home: BottomNavigationBarWidget(),
      ),
    );
  }
}
