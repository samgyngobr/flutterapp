import 'package:flutter/material.dart';


class LoadingFA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Text('loading');
    /*
    return Stack(
      children: [
        new Opacity(
          opacity: 0.3,
          child: const ModalBarrier(dismissible: false, color: Colors.grey),
        ),
        new Center(
          child: new CircularProgressIndicator(),
        ),
      ],
    );
    */

  }
}