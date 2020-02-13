// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$disableAddAtom = Atom(name: '_HomeBase.disableAdd');

  @override
  bool get disableAdd {
    _$disableAddAtom.context.enforceReadPolicy(_$disableAddAtom);
    _$disableAddAtom.reportObserved();
    return super.disableAdd;
  }

  @override
  set disableAdd(bool value) {
    _$disableAddAtom.context.conditionallyRunInAction(() {
      super.disableAdd = value;
      _$disableAddAtom.reportChanged();
    }, _$disableAddAtom, name: '${_$disableAddAtom.name}_set');
  }

  final _$userAtom = Atom(name: '_HomeBase.user');

  @override
  FirebaseUser get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(FirebaseUser value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$getUserDetailsAsyncAction = AsyncAction('getUserDetails');

  @override
  Future<FirebaseUser> getUserDetails() {
    return _$getUserDetailsAsyncAction.run(() => super.getUserDetails());
  }

  @override
  String toString() {
    final string =
        'disableAdd: ${disableAdd.toString()},user: ${user.toString()}';
    return '{$string}';
  }
}
