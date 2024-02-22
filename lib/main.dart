import 'package:flutter/material.dart';
import 'package:zikirmatik/screens/home_screen.dart';

void main(){
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {   // bu widgeti calıstırmamız gerekıyor
  const Uygulamam({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "myfont"),
          home : const HomeScreen(),
     );
  }

 


}




