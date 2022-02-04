import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
              name: 'Un Hermoso paisaje',
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
                name: 'Un Hermoso paisaje'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            SizedBox(height: 100),
          ],
        ));
  }
}
