import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_firebase_mobx/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {

  final IAuthRepository _authRepository = Modular.get();

  @observable
  FirebaseUser user;

  _AuthControllerBase(){
    _authRepository.getUser().then(setUser);
  }

  @action
  setUser(FirebaseUser value) => user = value;

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  Future logout() {
    return _authRepository.getLogout();
  }
  
}