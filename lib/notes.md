# Flutter notes 5 hour Course

> till now code flutter code 
> chapter 1 and 2 code
```dart

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

      //   body: Center(
      //     child: Container(
      //       color: Colors.blue,
      //       // width: double.infinity,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,

      //         crossAxisAlignment: CrossAxisAlignment.start,

      //         // mainAxisSize: MainAxisSize.max, //* it take whole column height
      //         mainAxisSize: MainAxisSize.min, //* it take need as
      //         // crossAxisAlignment: CrossAxisAlignment.end,
      //         children: [
      //           ListTile(title: Text("List Tile"), tileColor: Colors.green),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               borderRadius: BorderRadius.circular(15),
      //             ),
      //             child: Center(child: Text("Container 1")),
      //           ),
      //           Container(
      //             height: 250,
      //             width: 250,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               borderRadius: BorderRadius.circular(15),
      //             ),
      //             child: Padding(
      //               //* we can use Padding widget that only use for give padding also we can give  container also
      //               //! also Padding is less expensive than Container
      //               child: Stack(
      //                 children: [
      //                   Image.network(
      //                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUsrKVvM5g2I-rxCjjqpHVQiYDPzNnPPdbv71u3gW-Z5Gk-S0StWlIQHXjVwfU_YsDM3TQ&s",
      //                     width: double.infinity,
      //                   ),
      //                   SizedBox(
      //                     //! SizedBox only have two argumet height,width and child to bdhan ne hoy ne less expensive than Container
      //                     width: 20,
      //                     height: 50,
      //                     child: Center(child: Text("Flutter")),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //           Container(
      //             height: 200,
      //             width: 200,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               borderRadius: BorderRadius.circular(15),
      //             ),
      //             child: Image.asset("assets/images/ansh.png", fit: BoxFit.cover),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),

      //   //! List Tile
      //   body: Container(
      //     child: Stack(
      //       children: [
      //         ListTile(
      //           title: Text("This Is ListTile"),
      //           tileColor: Colors.greenAccent,
      //           leading: Icon(Icons.title_outlined),
      //           trailing: Text("this is traling"),
      //           onTap: () {
      //             print("tile cliked");
      //           },
      //         ),
      //       ],
      //     ),
      //   ),


      // body: Wrap(
      //   children: [
      //     Text("asdfgasdfasdfasdf"),
      //     Text("jaskdfjasljdfl;asjdflk"),
      //     Text("asdfasdfas;ldfkasldf"),
      //     Text("jaskdfjasljdfl;asjdflk"),
      //     Text("asdfasdfas;ldfkasldf"),
      //     Text("jaskdfjasljdfl;asjdflk"),
      //     Text("asdfasdfas;ldfkasldf"),
      //   ],
      // ),

      body: ,

    );
  }
}

```

# Simple App

```dart
return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: SafeArea(  //! it not show upper camera notch so user can view clearly
        child: Scaffold(
          //! scaffold is skelaton of app
          appBar: AppBar(
            title: Text("Appbar Title"),
            centerTitle: true,
            // leading: Icon(Icons.login),
            // actions: [Text("right side"), Icon(Icons.fork_right_outlined)],
            // backgroundColor: Colors.teal,
          ),

          drawer: Drawer(
            child: Column(
              children: [
                // DrawerHeader(child: Text("Drawer")),
                ListTile(title: Text("logout")),
              ],
            ),
          ),

          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () {
                  print("hello floating pring");
                },
                child: Icon(Icons.add),
              ),
              SizedBox(height: 10.0),
              FloatingActionButton(
                onPressed: () {
                  print("hello floating pring");
                },
                child: Icon(Icons.add),
              ),
            ],
          ),

          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
            ],
            onDestinationSelected: (value) {
              // print(value);
            },

            selectedIndex:
                1, //! if you put 0 than first one if you put 1 then second one autmoatically selected
          ),
        ),
      ),
    );
```


# fix bugs
> threw terminal
* can check in terminal 
* see in debug console

# null safety

> check in internet

# Statefull widget all information

```dart
//! statefull widget refresh everytime

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //! always make varible here

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //! don't put varible here because every time screen referesh means varible also refresh okay
    //* ||||
    return Scaffold(
      //! scaffold is skelaton of app
      appBar: AppBar(
        title: Text(title), //! this means title value i am sure it not null
        centerTitle: true,
      ),

      body: currentIndex == 0
          ? Center(child: Text("Home Page with 0 Index"))
          : Center(child: Text("User Page with 1 Index")),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'user'),
        ],
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        selectedIndex:
            currentIndex, //! if you put 0 than first one if you put 1 then second one autmoatically selected
      ),
    );
  }
}

* here staetfull widget refresh everytime 
* every time we have to use setState method to change the state

```


# Split Widgets

* we are spliting widget so we not need to referesh all the widget like main widget 
* so alway make separte widget in widget folder with widget name 
* file name small without space