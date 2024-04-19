import 'package:dutydash/presentation/utility/asset_utility.dart';
import 'package:flutter/material.dart';

class UserBannerScreen extends StatelessWidget {
  const UserBannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey,
      leading: GestureDetector(
        onTap: () {
          // Handle the tap event here
        },
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(AssetUtility.profileJPG),
        ),
      ),
      title: Text('Rokeya Yasmin'),
      subtitle: Text('rokeya123@gmail.com'),
    );
  }
}
