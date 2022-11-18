import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/screens/quiz_screen.dart';

import '../bloc/auth/auth_bloc.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/guest/guest_bloc.dart';
import '../bloc/question/question_bloc.dart';
import 'auth/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.green,
    backgroundColor: Colors.white,
    elevation: 0.0,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    side: const BorderSide(
        width: 1.0,
        color: Color(0xFFcbd5e1)
    ),
  );

  @override
  Widget build(BuildContext context) {
    context.read<CategoryBloc>().add(const AllCategories());
    return Scaffold(
        drawer: Drawer(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {},
            builder: (context, state) {
              GuestBloc guestBlog = context.read<GuestBloc>();

              return ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader( // <-- SEE HERE
                    decoration: const BoxDecoration(color: Color(0xff764abc)),
                    accountName: Text(
                      state.user!.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    accountEmail: Text(
                      state.user!.email,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    currentAccountPicture: const FlutterLogo(),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text('Page 1'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                    ),
                    title: const Text('Баромадан'),
                    onTap: () {
                      guestBlog.add(const Logout());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Маркази тести"),
        ),
        body: BlocConsumer<CategoryBloc, CategoryState>(
          listener: (__, _) {
          },
          builder: (context, state) {
            return GridView.count(
                crossAxisCount: 2,
                children: List.generate(state.categories.length, (index) {
                  return Container(
                    margin: const EdgeInsets.all(6),
                    child: ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: () {
                          context.read<QuestionBloc>().add(const Question());
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizScreen(title: state.categories[index]!.name,)),
                          );
                        },
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            Image.asset(state.categories[index]!.icon, width: 90, height: 90,),
                            const SizedBox(height: 15,),
                            Text(state.categories[index]!.name, style: const TextStyle(fontSize: 25, color: Colors.black),)
                          ],
                        )
                    ),
                  );
                }),
            );
          },
        )
    );
  }
}
