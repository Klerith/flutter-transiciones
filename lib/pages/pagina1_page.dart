import 'package:flutter/material.dart';
import 'package:transicion_app/pages/pagina2_page.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página'),
      ),
      body: Center(
        child: Text('Pagina 1'),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon( Icons.access_time ),
       onPressed: (){

         Navigator.push(context, _crearRuta() );

       }
    ),
   );
  }

  Route _crearRuta() {


    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => Pagina2Page(),
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: ( context, animation, secondaryAnimation, child ) {

        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut );

        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset.zero ).animate(curvedAnimation),
        //   child: child,
        // );

        // return ScaleTransition(
        //   child: child,
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation)
        // );

        // RotationTransition
        // return RotationTransition(
        //   child: child,
        //   turns: Tween<double>(begin: 0.0, end: 1.0 ).animate(curvedAnimation)
        // );

        // return FadeTransition(
        //   child: child,
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation)
        // );


        return RotationTransition(
          child: FadeTransition(
            child: child,
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation)
          ),
          turns: Tween<double>(begin: 0.0, end: 1.0 ).animate(curvedAnimation)
        );

      }
      );


  }
}