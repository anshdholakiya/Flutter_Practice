import 'package:flutter/material.dart';
import 'package:flutter_app_practice/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/Home.json'),
              FittedBox(
                //! automatically fit the in screen
                child: Text(
                  "Flutter App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 500.0,
                    letterSpacing: 50.0,
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              // Lottie.network(
              //   'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
              // ),
              // HeroWidget(),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  side: BorderSide(color: Colors.white, width: 1),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
