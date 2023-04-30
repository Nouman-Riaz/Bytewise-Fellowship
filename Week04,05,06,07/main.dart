import 'package:flutter/material.dart';
import 'package:week3457_practice_flutter/utils/routes.dart';
import 'package:week3457_practice_flutter/utils/routes_name.dart';

void main() {
  runApp(MyApp());
}

// class FavoriteWidget extends StatefulWidget {
//   const FavoriteWidget({Key? key}) : super(key: key);
//
//   @override
//   State<FavoriteWidget> createState() => _FavoriteWidgetState();
// }
//
// class _FavoriteWidgetState extends State<FavoriteWidget> {
//   bool _isFavorited = true;
//   int _favoriteCount = 41;
//   void _toggleFavourite(){
//     setState(() {
//       if (_isFavorited) {
//         _favoriteCount -= 1;
//         _isFavorited = false;
//       } else {
//         _favoriteCount += 1;
//         _isFavorited = true;
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           child: IconButton(
//             padding: const EdgeInsets.all(0),
//             alignment: Alignment.centerRight,
//             icon: (_isFavorited
//                 ? const Icon(Icons.star)
//                 : const Icon(Icons.star_border)),
//             color: Colors.red[500],
//             onPressed: _toggleFavourite,
//           ),
//         ),
//         SizedBox(
//           width: 18,
//           child: SizedBox(
//             child: Text('$_favoriteCount'),
//           ),
//         )
//       ],
//     );
//   }
// }


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteNames.HomeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

