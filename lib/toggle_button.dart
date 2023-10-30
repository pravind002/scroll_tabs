import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class ToggleButtonPage extends StatefulWidget {
  const ToggleButtonPage({
    Key? key,
  }) : super(key: key);

  @override
  _ToggleButtonPageState createState() => _ToggleButtonPageState();
}

class _ToggleButtonPageState extends State<ToggleButtonPage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Button'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 60,
              child: AnimatedToggleSwitch<int>.rolling(
                current: value,
                values: const [0, 1],
                onChanged: (i) async {
                  setState(() => value = i);
                  await Future.delayed(const Duration(seconds: 3));
                },
                loading: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
