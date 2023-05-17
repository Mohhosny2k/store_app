import 'package:store_app/models/prodect_model.dart';
//import 'package:http/http.dart' as http;
import 'dart:convert';

import '../helper/api.dart';
class CategoiresServices{

  Future<List<ProdectModel>> getCategoriesProdects ({required String categoryName})async{
  //  http.Response response =
  //     await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));//:category_name
   
    //if (response.statusCode ==200) {
  
   List<dynamic> data =   await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
 // List<dynamic> data = jsonDecode(response.body);
  List<ProdectModel> prodectList = [];
  for (int i = 0; i < data.length; i++) {
    prodectList.add(
      ProdectModel.fromJson(data[i]),
    );
  }
  return prodectList;
// }else{
//  throw Exception('there is problem in status code${response.statusCode}');
// }
  }
}