import 'package:flutter/material.dart';

class ThreadsAppBar extends StatelessWidget {
  const ThreadsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Ink(
              padding: const EdgeInsets.all(5),
              child: const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                child: Image.asset('assets/instagram.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                child: Image.asset('assets/more.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
