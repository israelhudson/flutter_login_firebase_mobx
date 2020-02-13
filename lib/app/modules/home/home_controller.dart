import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_firebase_mobx/app/shared/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {

  @observable
  bool disableAdd = true;

  @observable
  FirebaseUser user;

  logoff() async {
    await Modular.get<AuthController>().logout();
    Modular.to.pushReplacementNamed('/login');
  }

  @action
  Future<FirebaseUser> getUserDetails() async{
    user = await Modular.get<AuthController>().user;
  }
}
