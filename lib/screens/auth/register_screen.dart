import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:untitled1/models/requests/login_request.dart';
import 'package:untitled1/repositories/auth/auth_repository.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';

import '../../bloc/guest/guest_bloc.dart';
import '../../models/requests/register_request.dart';
import '../../utils/dialogs.dart';
import '../../widgets/app_text_field.dart';
import '../home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const routeName = "login";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late GuestBloc _guestBloc;

  @override
  Widget build(BuildContext context) {
    _guestBloc = context.read<GuestBloc>();
    final formGroup = _guestBloc.formgroupRegister;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.headset_mic, color: Colors.black,))
          ],
        ),
        body: BlocConsumer<GuestBloc, GuestState>(
          listener: (__, _) {},
          builder: (context, state) {
            final AuthRepository authRepository;
            return SingleChildScrollView(
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 60,
                          child: Text("Registration", style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        ReactiveForm(
                          formGroup: formGroup,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                AppTextField(
                                  controlName: 'name',
                                  label: "Name",
                                  isRequired: true,
                                  formGroup: formGroup,
                                  nextFocusControlName: "content",
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
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
                                const SizedBox(height: 30,),
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
                                        final request = RegisterRequest.fromFromGroup(value);
                                        _guestBloc.add(Register(request));
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
                                      const Text("Register", style: TextStyle(fontSize: 16),),
                                    );
                                  },
                                ),
                                const SizedBox(height: 30,),

                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Если у вас есть аккаунта."),
                                    TextButton(onPressed: () {}, child: const Text("Вход")),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )])),
            );
          },
        ));
  }
}
