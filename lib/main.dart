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
      appBar: AppBar(
        title: Text("Hey This is title"),
        leading: Icon(
          Icons.notification_add_sharp,
          color: Colors.amberAccent,
          size: 40, // we can change size of icon
        ), //! this is how we can get icons
        //* here leading means starting of appbar
      ),

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

      // body: Center(
      //   child: Container(
      //     height: double.infinity,
      //     width: double.infinity,
      //     margin: EdgeInsets.all(40),
      //     padding: EdgeInsets.all(40),
      //     decoration: BoxDecoration(
      //       color: Colors.red,
      //       borderRadius: BorderRadius.circular(20),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Container(
          color: Colors.blue,
          // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            crossAxisAlignment: CrossAxisAlignment.start,

            // mainAxisSize: MainAxisSize.max, //* it take whole column height
            mainAxisSize: MainAxisSize.min, //* it take need as
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text("Container 1")),
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  //* we can use Padding widget that only use for give padding also we can give  container also
                  //! also Padding is less expensive than Container
                  padding: EdgeInsets.all(80),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUsrKVvM5g2I-rxCjjqpHVQiYDPzNnPPdbv71u3gW-Z5Gk-S0StWlIQHXjVwfU_YsDM3TQ&s",
                        width: double.infinity,
                      ),
                      SizedBox(
                        //! SizedBox only have two argumet height,width and child to bdhan ne hoy ne less expensive than Container
                        width: 20,
                        height: 50,
                        child: Center(child: Text("Flutter")),
                      ),
                      ListTile(
                        title: Text("List Tile"),
                        tileColor: Colors.green,
                      ), 
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("assets/images/ansh.png", fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
