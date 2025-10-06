import 'dart:async';

import 'package:flutter/material.dart';

import 'constante.dart';

// Exemple 1 — Timer.periodic

// class WidgetExample extends StatefulWidget {
//   const WidgetExample({super.key});

//   @override
//   State<WidgetExample> createState() => _WidgetExampleState();
// }

// class _WidgetExampleState extends State<WidgetExample> {
//   int timer = 10;

//   @override
//   void initState() {
//     super.initState();

//     Timer.periodic(Duration(seconds: 1), (Timer time) {
//       if (timer == 0) {
//         time.cancel();
//       } else {
//         setState(() {
//           timer -= 1;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox(
//           width: width(context),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "Timer",
//                 style: TextStyle(
//                   fontSize: 45,
//                   color: Colors.blue,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(timer.toString(), style: TextStyle(fontSize: 25)),
//               if (timer == 0) Text('Resend', style: TextStyle(fontSize: 20)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Exemple 2 — Timer (une seule exécution)

class WidgetExample extends StatefulWidget {
  const WidgetExample({super.key});

  @override
  State<WidgetExample> createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetExample> {
  bool apper = false;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      setState(() {
        apper = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Timer",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              if (apper) Text('Somthing', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
