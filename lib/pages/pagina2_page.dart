import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Pagina 2'),
     ),
   );
  }
}