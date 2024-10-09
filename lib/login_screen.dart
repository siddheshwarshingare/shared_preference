import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preference/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromSharedPrefrence();
  }

  String? userName;
  String? passWord;

  //In Case user in looed in then get the data from sharedpreference......

  getDataFromSharedPrefrence() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    userName = await prefs.getString("username");
    passWord = await prefs.getString("password");
    print("object===========$userName");
    print("object===========$passWord");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Login Screen"),
        actions: [
          IconButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();

                prefs.clear();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login sucseesfully.........."),
          Center(child: Text("Usename : ${userName.toString()}")),
          Center(child: Text("Password : ${passWord.toString()}"))
        ],
      ),
    );
  }
}
