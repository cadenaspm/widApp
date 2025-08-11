

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {

  static const String name = "ButtonScreen";

  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: Text('Elevated Button ')
            ),
            ElevatedButton(
              onPressed: null, 
              child: Text('DIsabled button')
            ),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('ElevatedButton icon'),
            ),
            FilledButton(
              onPressed: (){}, 
              child: Text('Filled Button'),
            ),
            FilledButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Filled Button'),
            ),
            OutlinedButton(
              onPressed: (){}, 
              child: Text('Filled Button'),
            ),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Filled Button'),
            ),
            TextButton(
              onPressed: (){}, 
              child: Text('Text Button'),
            ),
            TextButton.icon(
              onPressed: (){}, 
              label: Text('Text icon'), 
              icon: Icon(Icons.access_alarm_rounded)
            ),

            //TODO: Crear un bton perosn

            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.access_alarm_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(color.primary),
                iconColor: WidgetStatePropertyAll(Colors.white)
              )
            ),

            _CustomButton()
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Theme.of(context).colorScheme.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 20 ),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}