import 'package:fl_app/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(
          right: 10, left: 10, top: MediaQuery.of(context).padding.top),
      decoration: const BoxDecoration(color: Colors.transparent, boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 2),
          blurRadius: 14,
          spreadRadius: 2,
        )
      ]),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19.2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white12,
                  offset: Offset(0, 0),
                  blurRadius: 8,
                  spreadRadius: 0,
                )
              ],
            ),
            child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(iconBack)),
          ),
          const SizedBox(width: 10),
          const Expanded(
              child: Text(
            "Username",
            style: TextStyle(color: Colors.white),
          )),
          const SizedBox(width: 10),
          const Icon(Icons.message, color: Colors.white70),
          const SizedBox(width: 10),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
              onPressed: () {},
              child: const Text('Edit', style: TextStyle(color: Colors.white))),
        ],
      ),
    ));
  }
}
