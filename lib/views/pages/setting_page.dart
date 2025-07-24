import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({
    super.key,
    required this.title,
  }); //! getting parameter from last page

  final String title; //! don't want to change varible

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false; //! nullable
  bool isSwitched = false; //! not-nullable
  double sliderValue = 0.0;
  String? menuItem = "e1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title,
        ), //! for statefullwidget use widget.title or direct title is good

        automaticallyImplyLeading:
            false, //! in appbar flutter automatically provide the back button on the leading we can disable it with this command
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }
}
