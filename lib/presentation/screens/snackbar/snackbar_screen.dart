

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

  void openDialog(BuildContext ctx){
    
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog( 
                  context: context,
                  children: [
                   Text(' Labore incididunt ipsum dolore pariatur sint. Amet sint consequat laborum sint irure dolor elit quis sunt. Anim reprehenderit velit nostrud sint cillum eiusmod. Incididunt anim eu ut enim mollit ex adipisicing do nostrud anim ipsum. Culpa elit eiusmod ea enim ipsum reprehenderit ex culpa cupidatat fugiat dolor nostrud non Lorem. Tempor qui eiusmod proident non.')
                  ]
                );
              }, 
              child: const Text('Licencias Usadas')
            ),

            FilledButton.tonal(
              onPressed: (){}, 
              child: Text('Mostrar dialogo')
            )
          ],
        ),
      ),
    );
  }
}