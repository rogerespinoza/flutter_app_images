import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Icon(
                Icons.photo_album_outlined,
                color: AppTheme.primary,
              ),
              title: Text('Soy un titulo'),
              subtitle: Text(
                  'Qui aliquip cupidatat excepteur sunt consequat. Consequat dolor ipsum cillum sit non officia cupidatat sunt anim eu. Consectetur ipsum minim nisi occaecat.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
