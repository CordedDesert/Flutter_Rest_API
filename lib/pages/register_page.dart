import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rest_api/utils/responsive.dart';
import 'package:flutter_rest_api/widgets/avatar_button.dart';
import 'package:flutter_rest_api/widgets/circle.dart';
import 'package:flutter_rest_api/widgets/register_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const routeNAme = 'register';

  @override
  State<RegisterPage> createState() => _HomePageState();
}

class _HomePageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
  final Responsive responsive = Responsive.of(context);

   final double pinkSize = responsive.wp(88);
      final double orangeSize = responsive.wp(57);

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
          width: double.infinity,
          height: responsive.heigth,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center, 
            children: <Widget>[
           Positioned(
                top: -pinkSize * 0.3,
                right: -pinkSize * 0.2,
                child: Circle(
              size: pinkSize,
              colors: [
                Colors.pinkAccent,
                Colors.pink,
              ],
          ),
          ),
            Positioned(
                top: -orangeSize * 0.35,
                left: -orangeSize * 0.15,
                child: Circle(
              size: orangeSize,
              colors: [
                Colors.orange,
                Colors.deepOrangeAccent,
              ],
          ),
          ),
          
          Positioned(
            top: pinkSize * 0.22,
            child: Column(
            children: <Widget>[ 
            Text("Hello Again\nSing up to get started.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: responsive.dp(1.6),
            color: Colors.white,
             ),
            ),
            SizedBox(height: responsive.dp(4.5),
            ),
            AvatarButton(
              imageSize: responsive.wp(25),
            )
            ],
            ),
          ),
          RegisterForm(),
          Positioned(
            left: 15,
            top: 15,
            child: SafeArea(child: CupertinoButton(
            color: Colors.black26,
          padding: EdgeInsets.all(10),
          borderRadius: BorderRadius.circular(30),
            child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          ),)
          )
            ],
             )
                       ,)
                       ,)
      )
    );
  }
}