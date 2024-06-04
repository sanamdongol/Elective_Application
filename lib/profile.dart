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
      child: ElevatedButton(onPressed: () { 
      showModalBottomSheet(context: context, 
      builder: (BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Personal Details",style: TextStyle(fontSize: 20.0),),
            ),
            Text("This is the very very long randoom code in this section."),
            TextButton(onPressed: (){}, child: Text("Close"),),
          ],

        );
      });
      },
       child: Text('Show buttom Sheet')
       ),
    );
  }
}