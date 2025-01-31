


import 'package:flutter/material.dart';
import 'package:flutter_rest_api/data/authentication_client.dart';
import 'package:flutter_rest_api/pages/home_page.dart';
import 'package:flutter_rest_api/pages/login_page.dart';
import 'package:flutter_rest_api/utils/logs.dart';
import 'package:get_it/get_it.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
final _authenticationClient = GetIt.instance<AuthenticationClient>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      _checkLogin();
     });
  }

  Future<void> _checkLogin() async{
   final token = await _authenticationClient.accessToken;
   if(token == null){
    Navigator.pushReplacementNamed(context, LoginPage.routeName);
    return;
   }
   Navigator.pushReplacementNamed(context, HomePage.routeName);//si esta autenticado, navega a la pagina principal
  }
  @override
  Widget build(BuildContext context) {
    //metodo para construir la interfaz del usuario
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),),
    );
  }
}