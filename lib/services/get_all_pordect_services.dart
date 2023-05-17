import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/prodect_model.dart';
//import 'package:http/http.dart' as http;

class GetAllProdectsServices {
  Future<List<ProdectModel>> getAllProdects() async {
    // http.Response response =
    //     await http.get(Uri.parse('https://fakestoreapi.com/products'));
  //Response response =   await Api().get(url: 'https://fakestoreapi.com/products');
  List<dynamic> data =   await Api().get(url: 'https://fakestoreapi.com/products');
   // if (response.statusCode == 200) {
   //   List<dynamic> data = jsonDecode(response.body);
      List<ProdectModel> prodectList = [];
      for (int i = 0; i < data.length; i++) {
        prodectList.add(
          ProdectModel.fromJson(data[i]),
        );
      }
      return prodectList;
    // } else {
    //   throw Exception('there is problem in status code${response.statusCode}');
    // }
  }
}
