import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(width: double.infinity),
          Text(
            'Lorem Ipsum - Text Roboto-Black - w900',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'Lorem Ipsum - Text Roboto-Bold - w700',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Lorem Ipsum - Text Roboto-Regular - w600',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Lorem Ipsum - Text Roboto-Medium - w500',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Lorem Ipsum - Text Roboto-Regular - w400',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Lorem Ipsum - Text Roboto-Light - w300',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'Lorem Ipsum - Text Roboto-Thin - w100',
            style: TextStyle(
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
