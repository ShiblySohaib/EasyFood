import 'dart:io';
import 'package:easyfood_flutter/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:easyfood_flutter/menu.dart';
import 'package:easyfood_flutter/latest_offers.dart';
import 'package:easyfood_flutter/home.dart';
import 'package:easyfood_flutter/profile.dart';
import 'package:easyfood_flutter/more.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 2;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text('Are you sure you want to exit?'),
                ),
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                  exit(0);
                },
                    child: const Text(
                      'Exit',
                      style: TextStyle(color: Color(0xffFC6011)),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Color(0xffFC6011)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            Menu(),
            LatestOffers(),
            Home(),
            Profile(),
            More(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            bottomNavigationBarTheme:
                Theme.of(context).bottomNavigationBarTheme.copyWith(
                      selectedItemColor: Color(0xffFC6011),
                    ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_offer),
                label: 'Offers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: 'More',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FirstPage()
  ));
}
