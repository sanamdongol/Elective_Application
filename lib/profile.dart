import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text('Name: Lucent Rai'),
                      const SizedBox(height: 10),
                      const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget sapien'),
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: const Text('Close'))
                    ]),
                  );
                });
          },
          child: const Text('Show Bottom sheet')),
    );
  }
}
