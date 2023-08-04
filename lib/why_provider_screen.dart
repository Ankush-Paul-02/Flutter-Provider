import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;
  @override
  void initState() {
    // Timer.periodic(
    //   const Duration(microseconds: 100),
    //   (timer) {
    //     count++;
    //     print(count);
    //     setState(() {});
    //   },
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.blue500,
        title: 'Provider'.text.bold.white.make().centered(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: count.toString().text.size(50).make().centered(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
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
