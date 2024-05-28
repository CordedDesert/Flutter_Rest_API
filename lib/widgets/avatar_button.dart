import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AvatarButton extends StatelessWidget {
  final double imageSize;
  const AvatarButton({super.key, this.imageSize=100,});

  @override
  Widget build(BuildContext context) {
    return   Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                       color: Colors.black26,
                       offset: Offset(0,20)
                      ),
                    ],
                  ),
                  child: ClipOval(
                  child: Image.network('https://cdn-icons-png.flaticon.com/512/6858/6858504.png',
                width: this.imageSize,
                height: this.imageSize,),
                ),
                ),
                
                Positioned(
                  bottom: 5,
                  right: 0,
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    borderRadius: BorderRadius.circular(30),
                      child: Container(
                        child: Icon(Icons.add,
                        color: Colors.white,
                        ),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,
                          width: 2),
                          color: Colors.pink,
                          shape: BoxShape.circle,
                  
                        ),
                        ),
                    onPressed: () {},
                    ),
                ),
              ],
            );
  }
}