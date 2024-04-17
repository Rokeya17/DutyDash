import 'package:flutter/material.dart';

class UserBanner extends StatelessWidget {
  const UserBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.JPG'),
      ),
      title: Text('Rokeya Yasmin'),
      subtitle: Text('rokeya123@gmail.com'),
    );
  }
}
