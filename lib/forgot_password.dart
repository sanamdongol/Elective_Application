import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Forgot Password'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(height: 20.0),
            Text(
                'Enter the email address linked with your account to send the reset link'),
            SizedBox(height: 15.0),
            TextField(
              controller: txtController,
              decoration: InputDecoration(hintText: 'Enter your email'),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                var result = txtController.text;
                print(result);
              },
              child: Text('Reset Password'),
            ),
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext builder) {
                        return AlertDialog(
                          title: Text('Hello'),
                          content: Text(
                              "You forgot password,  seems like your memory is not good."),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close')),
                            TextButton(
                                onPressed: () {}, child: Text('Dismiss')),
                            TextButton(onPressed: () {}, child: Text('OK')),
                          ],
                        );
                      });
                },
                icon: Icon(Icons.info)),
          ],
        ),
      ),
    );
  }

  // void validatePassword() {
  //   if (!controller.text.isEmpty) {
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Enter email address and try again'),
  //       ),
  //     );
  //   }
  // }
}
