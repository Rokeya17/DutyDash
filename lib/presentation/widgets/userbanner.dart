import 'package:dutydash/presentation/screens/update_ptofile_screen.dart';
import 'package:dutydash/presentation/utility/asset_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserBannerScreen extends StatelessWidget {
  const UserBannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListTile(
        tileColor: Colors.grey,
        leading: GestureDetector(
          onTap: () {
            Get.to(const UpdateProfileScreen());
          },
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(AssetUtility.profileJPG),
          ),
        ),
        title: const Text('Rokeya Yasmin'),
        subtitle: const Text('rokeya123@gmail.com'),
      ),
    );
  }
}
