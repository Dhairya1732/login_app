import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool isVisible = true;
  void toggle() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/GdscLogo.png",
              scale: 0.8,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text("Welcome to GDSC",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter email id",
                      labelText: "Email id",
                      prefixIcon: Icon(Icons.account_circle))),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              toggle();
                            },
                            icon: isVisible
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility))))),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 59, 139, 219)),
                  child: const Text(
                    "Log in",
                    style: TextStyle(),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(child: Text("Home Page")),
      ),
    );
  }
}
