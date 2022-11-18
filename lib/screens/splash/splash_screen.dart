import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/bloc/category/category_bloc.dart';
import 'package:untitled1/bloc/category/category_bloc.dart';
import 'package:untitled1/screens/auth/login_screen.dart';
import 'package:untitled1/screens/home_screen.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/blank_content.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = "splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isInit = false;

  @override
  void didChangeDependencies() {
    _initialize();
    super.didChangeDependencies();
  }

  void _initialize() async {
    if (!_isInit) {
      await Future.delayed(const Duration(milliseconds: 3000));

      if (!mounted) return;
      final authState = context
          .read<AuthBloc>()
          .state;

      final redirectScreen = authState.isAuthenticated
          ? HomeScreen.routeName
          : LoginScreen.routeName;
      Navigator.of(context).pushReplacementNamed(redirectScreen);
      _isInit = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BlankContent(
            isLoading: true,
          )
    );
  }
}