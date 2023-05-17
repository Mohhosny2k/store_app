import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_prodect_page.dart';
import 'package:store_app/services/update_prodects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter storeApp',
      theme: ThemeData(
       
        // primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.id:(context) => HomePage(),
        UpdateProductPage.id:(context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    home: HomePage(),
    );
  }
}


//  onPressed: () async {
//           http.Response response = await http
//               .post(Uri.parse('https://fakestoreapi.com/products'), body: {
//             ' title': ' test product',
//             'price': '13.5',
//             'description': 'lorem ipsum set',
//             'image': 'https://i.pravatar.cc',
//             'category': 'electronic'
//           },headers: {
//             'Accept':'application/json',
//            // 'Content-Type':'multipart/form-data'
//           'Content-Type':'application/x-www-form-urlencoded',
//           'Authorization':'Bearer'
//           });
//           print(response.body);
//         }, 