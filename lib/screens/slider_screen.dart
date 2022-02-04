import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 400,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      print(value);
                      setState(() {});
                    }
                  : null,
            ),
            // SliderTheme(
            //     data: SliderTheme.of(context).copyWith(
            //       // trackHeight: 4.0,
            //       thumbShape:
            //           const RoundSliderThumbShape(enabledThumbRadius: 30.0),
            //       // overlayColor: Colors.red.withAlpha(52),
            //       // overlayShape:
            //       //     const RoundSliderOverlayShape(overlayRadius: 0.0),
            //     ),
            //     child: Slider(
            //       activeColor: AppTheme.primary,
            //       min: 50,
            //       max: 400,
            //       value: _sliderValue,
            //       onChanged: _sliderEnabled
            //           ? (value) {
            //               _sliderValue = value;
            //               print(value);
            //               setState(() {});
            //             }
            //           : null,
            //     )),
            Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),
            Switch(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),
            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            // const SizedBox(height: 50),
          ],
        ));
  }
}
