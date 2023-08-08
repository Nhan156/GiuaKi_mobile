import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(top: 50),child: Text(
      "Profile Page",
      style: TextStyle(
        fontSize: 30.0,
      ),
    ),
    );
  }
}
