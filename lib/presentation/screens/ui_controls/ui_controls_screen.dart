

import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloperMode,
          title: Text('Developer Mode'),
          subtitle: Text('Controles Adicionales'),
          onChanged: (value) => setState(() {
            isDeveloperMode = !isDeveloperMode;
          }),
        ),

        RadioListTile(
          value: Transportation.car, 
          title: Text('By Car'),
          subtitle: Text('Travel by car'),
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),
        ),                                                                                                                                                                                         
        RadioListTile(
          value: Transportation.boat, 
          title: Text('By Boat'),
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
        ),                                                                                                                                                                        
        RadioListTile(
          value: Transportation.plane, 
          title: Text('By plane'),
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.plane;
          }),
        ),                                                                                                                                                                                         
        RadioListTile(
          value: Transportation.submarine, 
          title: Text('By submarine'),
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.submarine;
          }),
        )                                                                                                                                                                                           
      ],
    );
  }
}   