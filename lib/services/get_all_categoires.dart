import 'package:http/http.dart' as http;
import 'dart:convert';

import '../helper/api.dart';

class GetAllCategoiresServices {
  Future<List<dynamic>> getAllCategoires() async {
    // http.Response response = await http
    //     .get(Uri.parse('https://fakestoreapi.com/products/categories'));

   // if (response.statusCode==200) {
       List<dynamic> data =   await Api().get(url: 'https://fakestoreapi.com/products/categories');

 // List<dynamic> data = jsonDecode(response.body);
  
  return data;
// }else{
//    throw Exception('there is problem in status code${response.statusCode}');
// }
  }
}
