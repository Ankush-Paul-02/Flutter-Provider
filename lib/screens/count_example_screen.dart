import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class CountExampleScreen extends StatelessWidget {
  const CountExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('Build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.blue500,
        title: 'Provider'.text.bold.white.make().centered(),
      ),
      body: Consumer<CountProvider>(
        builder: (context, value, child) {
          print('Only this widget built');
          return value.getCount.text.size(50).bold.make().centered();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        backgroundColor: Vx.blue500,
        child: const Icon(
          Icons.add,
          color: Vx.white,
        ),
      ),
    );
  }
}
