import '../helper/api.dart';
import '../models/prodect_model.dart';

class UpdateProductServices {
  Future<ProdectModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    print('product id ==$id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        ' title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category
      }, // token: token
    );
    return ProdectModel.fromJson(data);
  }
}
