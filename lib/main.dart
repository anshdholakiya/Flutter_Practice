import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 2, 2),
          brightness: Brightness.dark,
        ),
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Login", style: TextStyle(fontSize: 50, color: Colors.amber)),
      //       Text("Username"),
      //       TextField(maxLength: 5),
      //       Text("Password"),
      //       TextField(obscureText: true),
      //       ElevatedButton(
      //         onPressed: () {
      //           print("this is print statement");
      //         },
      //         child: Text("Login"),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(40),          
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),                                     
          
        ),
      ),
    );
  }
}
