import 'package:flutter/material.dart';
import 'package:shared_preference/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();

  //Here we are added or stored into sharedprefrence
  addintoSharedPrefrence() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("username", userName.text);
    await prefs.setString("password", passWord.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 226, 182),
      appBar: AppBar(
        title: const Text("This is home screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Enter user name"),
              controller: userName,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Enter password"),
              controller: passWord,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (userName.text.isEmpty || passWord.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content:
                              Text('Please enter a user name and password')),
                    );
                  } else {
                    addintoSharedPrefrence();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }
                },
                child: const Text("Go to the Login screen"))
          ],
        ),
      ),
    );
  }
}
