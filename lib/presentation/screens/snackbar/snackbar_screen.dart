

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    
    showDialog(
      context: ctx, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('¿Estas seguro?'),
        content: Text('Excepteur laboris occaecat ullamco aliqua nostrud eu et dolore ex est excepteur amet deserunt.'),
        actions: [
          TextButton(
            onPressed: () => ctx.pop(), 
            child: Text('Cancelar')
          ),
          FilledButton(
            onPressed: () => ctx.pop(), 
            child: Text('Aceptar')
          )
        ],
      ),
    );

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
              onPressed: () => openDialog(context), 
              child: Text('Mostrar dialogo')
            )
          ],
        ),
      ),
    );
  }
}