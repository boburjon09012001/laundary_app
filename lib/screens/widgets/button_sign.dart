import 'package:flutter/material.dart';
import 'package:laundry_app/screens/home_screen/bucket_page.dart';

class ButtonSign extends StatelessWidget {
  const ButtonSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314.0,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const BucketPage()));
        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
               const EdgeInsets.all(12)),
            foregroundColor:
            MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF0083FF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(
                    color: Color(0xFF0083FF),
                  ),
                ))),
        child: const Text(
          "Complete order",
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20.0),
        ),
      ),
    );
  }
}
