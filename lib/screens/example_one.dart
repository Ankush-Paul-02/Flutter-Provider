import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/example_one_provider.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.blue500,
        title: 'Provider Example 1'.text.bold.white.make().centered(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) => Slider(
              min: 0,
              max: 1,
              value: value.getValue,
              onChanged: (newValue) {
                value.setValue(newValue);
              },
            ),
          ),
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) => Row(
              children: [
                'Container1'
                    .text
                    .semiBold
                    .white
                    .size(24)
                    .make()
                    .centered()
                    .box
                    .height(100)
                    .withDecoration(BoxDecoration(
                        color: Colors.lightGreen.withOpacity(value.getValue)))
                    .make()
                    .expand(),
                'Container2'
                    .text
                    .semiBold
                    .white
                    .size(24)
                    .make()
                    .centered()
                    .box
                    .height(100)
                    .withDecoration(BoxDecoration(
                        color: Colors.lightBlue.withOpacity(value.getValue)))
                    .make()
                    .expand(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
