import 'package:flutter/material.dart';
import 'package:week3457_practice_flutter/utils/routes_name.dart';
import 'Screen3.dart';
class Screen2 extends StatefulWidget {
  // final String name;
  // final int num;
  dynamic data;
  Screen2({Key? key,
  required this.data}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title:  Text(widget.data['First']),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.ScreenThree,arguments: {
                  'First' : 'My App',
                  'Second' : 'Flutter Tutorial'
                  });
                } ,
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
            )
          ],
        )
    );
  }
}
