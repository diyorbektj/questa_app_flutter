import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled1/bloc/app_theme/bloc/app_theme_bloc.dart';
import 'package:untitled1/bloc/auth/auth_bloc.dart';
import 'package:untitled1/bloc/post/post_bloc.dart';
import 'package:untitled1/repositories/auth/auth_repository.dart';
import 'package:untitled1/repositories/category/category_repository.dart';
import 'package:untitled1/repositories/post/post_repository.dart';

// import 'package:untitled1/screens/add_post_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/repositories/question/question_repository.dart';
import 'package:untitled1/screens/auth/login_screen.dart';
import 'package:untitled1/screens/home_screen.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';

import 'bloc/category/category_bloc.dart';
import 'bloc/guest/guest_bloc.dart';
import 'bloc/question/question_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => PostRepository(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
        RepositoryProvider(
          create: (context) => CategoryRepository(),
        ),
        RepositoryProvider(
          create: (context) => QuestionRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppThemeBloc(),
          ),
          BlocProvider(create: (_) => AuthBloc()),
          BlocProvider(
            create: (context) => GuestBloc(
                authRepository: context.read<AuthRepository>(),
                authBloc: context.read<AuthBloc>()),
          ),
          BlocProvider(
            create: (context) =>
                PostBloc(
                  postRepository: context.read<PostRepository>(),
                ),
          ),
          BlocProvider(
            create: (context) =>
                QuestionBloc(
                  questionRepository: context.read<QuestionRepository>(),
                ),
          ),
          BlocProvider(
            create: (context) =>
                CategoryBloc(
                  categoryRepository: context.read<CategoryRepository>(),
                ),
          ),
        ],
        child: BlocConsumer<AppThemeBloc, AppThemeState>(
          listener: (__, _) {},
          builder: (context, state) {
            return MaterialApp(
              title: 'Bloc example',
              theme: ThemeData(
                primarySwatch: Colors.green,
              ),
              darkTheme: ThemeData.dark(),
              themeMode: state.map(
                light: (_) => ThemeMode.light,
                dark: (_) => ThemeMode.dark,
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: SplashScreen.routeName,
              routes: {
                SplashScreen.routeName: (_) => const SplashScreen(),
                LoginScreen.routeName: (_) => const LoginScreen(),
                HomeScreen.routeName: (_) => const HomeScreen(),
              },
            );
          },
        ),
      ),
    );
  }
}
