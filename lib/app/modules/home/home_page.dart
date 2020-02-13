import 'package:flutter/material.dart';
import 'package:flutter_login_firebase_mobx/app/modules/home/home_controller.dart';
import 'package:flutter_login_firebase_mobx/app/modules/login/login_page.dart';
import 'package:flutter_login_firebase_mobx/app/shared/auth/auth_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  void initState() {
    controller.getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.highlight_off), onPressed: ()=>controller.logoff()),
      ),
      body: Observer(builder: (_) {
        return Column(
          children: <Widget>[
            Text("${controller.user.displayName}"),
            Text("${controller.user.email}"),
            Text("${controller.user.photoUrl}"),
            Text("${controller.user.phoneNumber}"),
          ],
        );
      }),
    );
  }
}
