import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Update Profile',
            style: TextStyle(
                fontWeight: FontWeight.w800, color: Colors.blue, fontSize: 25),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  label: const Text(
                    'email',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: const Text(
                  'First Name',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: const Text(
                  'Last Name',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: const Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              label: const Text(
                'Password',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: const Text(
                  'email',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: const Text(
                  'email',
                  style: TextStyle(fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }
}