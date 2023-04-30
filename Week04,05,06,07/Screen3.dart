import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  // final String name;
  // final int num;
  dynamic data;
  Screen3({Key? key,
  required this.data}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title:  Text(widget.data['Second']),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(image: AssetImage('assets/image1.jpg'), fit: BoxFit.cover)
                    ),
                    child:  const Center(
                      child: Text('Tap here'),
                    )
                ),
              ),
          ],
        )
    );
  }
}
