import 'package:flutter/material.dart';

import '../home_screen/menu_page.dart';

class StartLaundryButton extends StatelessWidget {
  const StartLaundryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314.0,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.all(12)),
            foregroundColor:
            MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor:
            MaterialStateProperty.all<Color>(Color(0xFF0083FF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(
                    color: Color(0xFF0083FF),
                  ),
                ))),
        child: const Text(
          "Start Laundry",
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20.0),
        ),
      ),
    );
  }
}
