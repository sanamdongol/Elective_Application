import 'package:elective_app/dashboard.dart';
import 'package:elective_app/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'register_page.dart';

void main() {
  runApp(const MyApp());
}
// I am sugam

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 30),
          displaySmall: const TextStyle(fontSize: 60, color: Colors.green),
          bodySmall: GoogleFonts.pacifico(),
          titleMedium: GoogleFonts.poppins(),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? isAgreed = false;

  bool? isMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // const Text(
            //   "Welcome back.\nYou've been missed",
            //   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            // ),
            Text(
              "Welcome back.\nYou've been missed",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 40),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text("Code Technologies",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.red)),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email address',
              ),
            ),
            SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password',
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text("Forgot Password?"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                        //  ForgotPasswordPage(name: "Hello password birsyo"),
                        ForgotPasswordPage(),
                        settings: RouteSettings(arguments: "Jake"),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: isAgreed,
                    onChanged: (value) {
                      setState(() {
                        isAgreed = value;
                      });
                    }),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: 'Agree our ',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: 'Terms & Condition '),
                        TextSpan(
                            text: 'Privacy and Policy',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox.expand(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              const Text(
                                                'Privacy Policy',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 20),
                                              const Text(
                                                  'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Close'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                if (isAgreed != true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'Agree our terms and condition before you login')),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(
                        name: 'Jake',
                      ),
                    ),
                  );
                }
              },
              child: Text("Login"),
            ),
            SizedBox(height: 40),
            Center(child: const Text("or")),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.house),
              label: Text("Login with  Google"),
            ),
            SizedBox(height: 2),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.house),
              label: Text("Login with  Facebook"),
            ),
            SizedBox(height: 30),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\t have an account? ',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Create new account',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
