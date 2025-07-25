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

# List of Widgets

```dart
 List<Widget> pages = [HomePage(), ProfilePage()];
 ```
* from this we can make list of widgets
* here at Widget you can make list of Widget



# value notifier 
*  valuenotifier  : hold the data
* valueLisetenableBuilder  : listen to the data  (don't need to setState)
** value notifier is widget it only wrap in widget **


# Text Input 

```dart
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text(controller.text),
        ],
      ),
    );
  }
}

```

# Checkbox CheckboxTile Switch Image cliking animation dropDown_button 

```dart
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false; //! nullable
  bool isSwitched = false; //! not-nullable
  double sliderValue = 0.0;
  String? menuItem = "e1";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: menuItem,
              items: [
                DropdownMenuItem(value: "e1", child: Text("Element 1")),
                DropdownMenuItem(value: "e2", child: Text("Element 2")),
                DropdownMenuItem(value: "e3", child: Text("Element 3")),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox(
              tristate: true, //! three state nothing ,checked , unchecked
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              title: Text("Click Me"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              //! adaptive is use for iphone mobile adaptive
              title: Text("Switch Me"),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            Slider.adaptive(
              max: 10.0,
              divisions: 10,
              value: sliderValue,
              onChanged: (double value) {
                //! if you want than mentain type for your simplisity
                setState(() {
                  sliderValue = value;
                  // print(value);
                });
              },
            ),

            // GestureDetector(  //! Detect gesture on it or tapping or clicking
            //   onTap: () {
            //     print("Image tapeed");
            //   },
            //   child: Image.asset('assets/images/ansh.png'),
            // ),

            // Option of GestureDetector
            InkWell(
              //! good animation for clicking on image
              splashColor: Colors.teal,
              onTap: () {
                print("Image tapeed");
              },
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text("Click Me"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: Text("Click Me"),
            ),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(),
              child: Text("Click Me"),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(),
              child: Text("Click Me"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: TextButton.styleFrom(),
              child: Text("Click Me"),
            ),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}

```

* this is give me more widget like button checkbox drop down and so more


# scrolling the appliation

* for scrolling wrap whole with 
```dart
SingleChildScrollView()
```


# Routing Navigator.push

```dart
IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
```
* here have to go navigator push than materialpageroute and return which page need to navigate 

## for navigate the page use appbar and wrap with scafold

# Navigator.pop uses

## it will pop to last page replacment of back button automatically genrated by routing
```dart
return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Setting Page"),
        // automaticallyImplyLeading:
        //     false, //! in appbar flutter automatically provide the back button on the leading we can disable it with this command
      ),
```


# Push Replacement

#### With Push Replacement current page is repalce by navigate page in simple way we can't go back to previous page use for Login page

```dart
IconButton(
            onPressed: () {
              Navigator.pushReplacement(  //! it replace existing page so we can't go back 
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
```


# Send Data threw page (Without Notifier) threw argument
 

- `this.title` → assigns constructor value to class variable  
- `final` → value can’t be changed after set  
- `required` → must pass this value when creating the widget  

## ✅ Example

```dart
class SettingPage extends StatefulWidget {
  final String title;

  const SettingPage({required this.title});
}
```
## use like this
```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SettingPage(title: "Settings"),
  ),
);

```


# clean ui widget

* just login page with clean ui with pushReplacment use

# Image custimaztiom

#### we can also give image color or any type of style
```dart
child: Image.asset(
          'assets/images/ansh.png',
          color: Colors.teal,
          colorBlendMode: BlendMode.darken,
        ),
```

# hero widget 
### hero widget is used to make smooth transistion between changin screen

```dart
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero1",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset('assets/images/ansh.png'),
      ),
    );
  }
} 
```



# Snack bar Widget

### snack bar is like give me some pop message to the use like feedback form or etc

```dart 
ElevatedButton(
                onPressed: () {  //! an floating snack bar with duration
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(   //! for snack bar 
                      duration: Duration(seconds: 4),
                      behavior: SnackBarBehavior.floating,
                      content: Text("SnackBar"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Open Snack Bar"),
              ),
```




# Alert Dialog or showDialog 


### it syntax is little hard but can do it with action list we can make button to close it
```dart
ElevatedButton(
                onPressed: () {
                  showDialog(
                    //! showdialog widget
                    context: context,
                    builder: (context) {
                      // return AboutDialog();  //! just open flutter about dialog
                      return AlertDialog(
                        //! show alertDialog widget
                        title: Text("Alert Title"),
                        content: Text("alert content"),
                        actions: [
                          //! in action we can make button for close button
                          CloseButton(),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Open Diaolog"),
              ),
```







# Divider Vertical | and horizontal ----   

### this divider is widget
```dart

Divider(color: Colors.teal, thickness: 5.0, endIndent: 200.0),  //! horizontal divder with property
              SizedBox(
                height: 50.0,
                child: VerticalDivider(color: Colors.green),  //! vertical divider
              ),
```




# Card widget
 
#### it is card widget to make attractive card or anything you want 
```dart
 Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Basic Layouting"),
                    Text("The Description of This"),
                  ],
                ),
              ),
            ),
          ),
```
 
# Resuble Text Style or any other style

### we can make resusable text style or any style with put in other file and use like 

```dart
import 'package:flutter/material.dart';

//! we can make our style so we can reuse that in the our project

class KTextStyle {
  static const TextStyle titleTealText = TextStyle(
    color: Colors.teal,
    fontSize: 20.21,
    fontWeight: FontWeight.bold,
    letterSpacing: 10.0,
  );

  static const TextStyle descriptionText = TextStyle(fontSize: 13.21);
}

```

* can be use with like 
```dart
children: [
                    Text("Basic Layouting", style: KTextStyle.titleTealText),
                    Text(
                      "The Description of This",
                      style: KTextStyle.descriptionText,
                    ),
```
 
# Packages





#




#




#




#