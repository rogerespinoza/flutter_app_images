import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length)
        //   children: [
        //     ...options
        //         .map((item) => ListTile(
        //               title: Text(item),
        //               trailing: const Icon(Icons.arrow_forward_ios_outlined),
        //             ))
        //         .toList()

        //     // Text('HelloFriend'),
        //     // Text('HelloFriend'),
        //     // Text('HelloFriend'),
        //     // Text('HelloFriend'),
        //     // Text('HelloFriend'),
        //     // Text('HelloFriend'),
        //     // Text('HelloFriend'),
        //   ],
        // ),
        );
  }
}
