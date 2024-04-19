import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  const TitleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Title will be here'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('MIMO the Queeno.'),
          const Text('Date'),
          Row(
            children: [
              const Chip(
                label: Text('NEW'),
                backgroundColor: Colors.blueGrey,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_note,
                  color: Colors.indigoAccent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
