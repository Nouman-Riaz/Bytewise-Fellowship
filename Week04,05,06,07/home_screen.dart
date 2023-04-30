import 'package:flutter/material.dart';
import 'package:week3457_practice_flutter/utils/routes_name.dart';
import 'Screen2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter AppBar Tutorial"),
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
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(name : "Nouman",num : 1 )));
                  Navigator.pushNamed(context, RouteNames.ScreenTwo,arguments: {
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
                    ),
                    child:  const Center(
                      child: Text('Tap here'),
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 200,
              height: 200,
              decoration:const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/image1.jpg'))
                ),
              child: const Center(child: Text('Image 1')),
            ),
          ],
        )
    );
  }
}