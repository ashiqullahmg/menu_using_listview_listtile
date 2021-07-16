import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/menu_options_model.dart';

void main() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MenuOptions(),
  )));
}

class MenuOptions extends StatefulWidget {
  const MenuOptions({Key? key}) : super(key: key);

  @override
  _MenuOptionsState createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1B21),
      appBar: AppBar(
        title: Text('Menu Options'),
        centerTitle: true,
        backgroundColor: Color(0xFF22242C),
        leading: TextButton(
          child: Icon(Icons.arrow_back),
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {
            print('Go back!');
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              print('Help');
            },
            child: Text(
              'HELP',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: options.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return SizedBox(
              height: 15.0,
            );
          } else if (index == options.length + 1) {
            return SizedBox(
              height: 100.0,
            );
          }
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
              color: Color(0xFF303030),
              borderRadius: BorderRadius.circular(10.0),
              border: _selectedItem == index - 1
                  ? Border.all(
                      color: Colors.white54,
                    )
                  : null,
            ),
            child: ListTile(
              leading: options[index - 1].icon,
              title: Text(
                options[index - 1].title,
                style: TextStyle(
                  color: _selectedItem == index - 1
                      ? Colors.white
                      : Colors.white70,
                ),
              ),
              subtitle: Text(
                options[index - 1].subtitle,
                style: TextStyle(
                  color: _selectedItem == index - 1
                      ? Colors.white
                      : Colors.white70,
                ),
              ),
              selected: _selectedItem == index - 1,
              onTap: () {
                setState(() {
                  _selectedItem = index - 1;
                  print('${options[index - 1].title} is selected');
                });
              },
            ),
          );
        },
      ),
      bottomSheet: GestureDetector(
        child: Container(
          width: double.infinity,
          height: 80.0,
          color: Color(0xFF313440),
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Save & Continue',
                  style: TextStyle(color: Colors.white70, fontSize: 18.0),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                  size: 18.0,
                ),
              ],
            ),
          ),
        ),
        onTap: () => print('Saved'),
      ),
    );
  }
}
