import 'package:flutter_login_firebase_mobx/app/app_controller.dart';
import 'package:flutter_login_firebase_mobx/app/modules/login/login_module.dart';
import 'package:flutter_login_firebase_mobx/app/shared/auth/auth_controller.dart';
import 'package:flutter_login_firebase_mobx/app/shared/auth/repositories/auth_repository.dart';
import 'package:flutter_login_firebase_mobx/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_firebase_mobx/app/app_widget.dart';
import 'package:flutter_login_firebase_mobx/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<Router> get routers => [
        Router('/home', module: HomeModule()),
        Router('/', module: LoginModule()),
        //Router('/', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
