import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled1/bloc/auth/auth_bloc.dart';
import 'package:untitled1/enums/data_status.dart';
import 'package:untitled1/models/requests/login_request.dart';
import 'package:untitled1/models/requests/register_request.dart';
import 'package:untitled1/models/user_model.dart';
import 'package:untitled1/repositories/auth/auth_repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:untitled1/utils/logger.dart';

import '../../screens/add_post_screen.dart';

part 'guest_event.dart';
part 'guest_state.dart';
part 'guest_bloc.freezed.dart';

class GuestBloc extends Bloc<GuestEvent, GuestState> {
  final AuthRepository _authRepository;
  final AuthBloc _authBloc;

  GuestBloc({
    required AuthRepository authRepository,
    required AuthBloc authBloc,
  })  : _authRepository = authRepository,
        _authBloc = authBloc,
        super(GuestState.initial()) {
    on<Login>((event, emit) async {
      final response = await _authRepository.login(event.request);
      emit(state.copyWith(status: DataStatus.loading));
      if (response.success) {
        _authBloc.add(Authenticated(
            isAuthenticated: true,
            user: response.data!.user,
            token: response.data!.token));
        await Future.delayed(const Duration(milliseconds: 2000));
        emit(state.copyWith(status: DataStatus.success));
      }else if(!response.success){
        emit(state.copyWith(
            status: DataStatus.error,
            message: response.message
        ));
      }
    });
    on<Register>((event, emit) async{
      final response = await _authRepository.register(event.request);
      emit(state.copyWith(status: DataStatus.loading));
      if (response.success) {
        _authBloc.add(Authenticated(
            isAuthenticated: true,
            user: response.data!.user,
            token: response.data!.token));
        await Future.delayed(const Duration(milliseconds: 2000));
        emit(state.copyWith(status: DataStatus.success));
      }else if(!response.success){
        emit(state.copyWith(
            status: DataStatus.error,
            message: response.message
        ));
      }
    });
    on<Logout>((event, emit) async {
      _authRepository.logout();
      _authBloc.add(const Authenticated(
          isAuthenticated: false,
          user: null,
          token: null
      ));
    });
  }
  FormGroup get formgroup => fb.group({
    'email': [
      state.hasUser ? state.user!.email : "",
      Validators.required,
    ],
    'password': [
      state.hasUser ? state.user!.password : "",
      Validators.required,
    ],

  });
  FormGroup get formgroupRegister => fb.group({
    'name': [
      state.hasUser ? state.user!.name : "",
      Validators.required,
    ],
    'email': [
      state.hasUser ? state.user!.email : "",
      Validators.required,
    ],
    'password': [
      state.hasUser ? state.user!.password : "",
      Validators.required,
    ],

  });
}
