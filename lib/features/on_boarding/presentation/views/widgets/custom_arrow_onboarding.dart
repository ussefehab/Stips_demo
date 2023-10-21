import 'package:flutter/material.dart';
class CustomArrow extends StatelessWidget {
  const CustomArrow({super.key,  this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 247, 241, 241)),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 213, 211, 211),
            ),
            child: 
            IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 30,
          color: Color.fromARGB(255, 58, 58, 58),
        ))
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}


