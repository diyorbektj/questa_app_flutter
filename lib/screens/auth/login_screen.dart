import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:untitled1/models/requests/login_request.dart';
import 'package:untitled1/repositories/auth/auth_repository.dart';
import 'package:untitled1/screens/auth/register_screen.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';

import '../../bloc/guest/guest_bloc.dart';
import '../../utils/dialogs.dart';
import '../../widgets/app_text_field.dart';
import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late GuestBloc _guestBloc;

  @override
  Widget build(BuildContext context) {
    _guestBloc = context.read<GuestBloc>();
    final formGroup = _guestBloc.formgroup;
    return Scaffold(
      body: BlocConsumer<GuestBloc, GuestState>(
        listener: (__, _) {},
        builder: (context, state) {
          final AuthRepository authRepository;
          return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: const BoxDecoration(
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Login", style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                              ),
                            ),
                            Text("Welcome back",style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),)
                          ]
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 30,),
                            ReactiveForm(
                            formGroup: formGroup,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                              children: [
                                AppTextField(
                                  controlName: 'email',
                                  label: "Email",
                                  isRequired: true,
                                  formGroup: formGroup,
                                  nextFocusControlName: "content",
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                AppTextField(
                                  controlName: 'password',
                                  label: "Password",
                                  password: true,
                                  isRequired: true,
                                  formGroup: formGroup,
                                  nextFocusControlName: "content",
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(onPressed: () {}, child: const Text("Забыл пароль")),
                                ),

                                BlocConsumer<GuestBloc, GuestState>(
                                    listener: (context, state) {
                                      if (state.status.isError) {
                                        showMessageSnackbar(
                                          context,
                                          state.message,
                                        );
                                      }
                                      if(state.status.isSuccess){
                                        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                                      }
                                    },
                                    builder: (context, state) {
                                      return ElevatedButton(
                                        onPressed: () async{
                                          final value = formGroup.value;
                                          final request = LoginRequest.fromFromGroup(value);
                                          _guestBloc.add(Login(request));
                                        },
                                        style: ButtonStyle(
                                          minimumSize: MaterialStateProperty.all(
                                            const Size(300, 50)
                                          )
                                        ),
                                        child: state.status.isLoading ?
                                        const CircularProgressIndicator(
                                          color: Colors.white,
                                        ) :
                                        const Text("Login", style: TextStyle(fontSize: 16),),
                                      );
  },
),
                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey[200],
                                      ),
                                      child: Image.asset("assets/google.png", width: 30, height: 30,),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey[200],
                                      ),
                                      child: Image.asset("assets/instagram.png", width: 30, height: 30,),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey[200],
                                      ),
                                      child: Image.asset("assets/facebook.png", width: 30, height: 30,),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      child: Text("Если у вас нет аккаунта."),
                                    ),
                                    TextButton(onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const RegisterScreen()),
                                      );
                                    }, child: const Text("Зарегистрироваться"))
                                  ],
                                )
                            ],
                ),
              ),
          ),
                          ],
                        ),
                      ),
                    )])),
            );
  },
));
  }
}
