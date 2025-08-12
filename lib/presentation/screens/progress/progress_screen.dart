

import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 20,),
          CircularProgressIndicator(strokeWidth: 3,),

          SizedBox(height: 20,),
          Text('Circular Linear indicator controlado'),
          SizedBox(height: 10,),

          _ControlledProgressIndicator()

        ],
      )
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {

  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){
        return (value * 2) / 100;
      }).takeWhile((value) => value <= 100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;


        return  Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircularProgressIndicator(value: progressValue, backgroundColor: Colors.black12,),
              const SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(value: progressValue)
              )
            ],
          ),
        );
      },
    );
  }
}