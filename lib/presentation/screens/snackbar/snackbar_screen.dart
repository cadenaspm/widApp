

import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext ctx){

    ScaffoldMessenger.of(ctx).clearSnackBars();

    final snackbar = SnackBar(
      content: Text('Hola Mundo'),
      action: SnackBarAction(label: 'OKI!', onPressed: (){}),
    );

    ScaffoldMessenger.of(ctx).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}