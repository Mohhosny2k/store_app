import 'package:flutter/material.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:store_app/widgets/custom_buttom.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../services/update_prodects.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'updateProduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? pricee;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    ProdectModel product =
        ModalRoute.of(context)!.settings.arguments as ProdectModel; //object
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SizedBox(
              height: 100,
            ),
            CustomTextFormFeild(
              onChanged: (data) {
                productName = data;
              },
              hientText: 'Product Name',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormFeild(
              onChanged: (data) {
                desc = data;
              },
              hientText: 'description',
            ),
            SizedBox(
              height: 10,
            ),

            CustomTextFormFeild(
              onChanged: (data) {
                pricee = data; //int.parse(data);
              },
              inputType: TextInputType.number,
              hientText: 'price',
            ),
            SizedBox(
              height: 10,
            ),

            CustomTextFormFeild(
              hientText: 'image',
            ),

            // CustomTextFormFeild(
            //   hientText: 'category',
            // ),
            SizedBox(
              height: 50,
            ),
            CustomButtom(
              text: 'Update',
              onTap: () async {
                isloading = true;
                setState(() {});
                try {
                  await updateProduct(product);
                  print('success');
                } catch (e) {
                  print(e.toString());
                  print('eeeeeeeeeeeeeeeeeeeerrrrrroorrrrr');
                  // isloading = false;
                  // setState(() {});
                }
                isloading = false;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> updateProduct(ProdectModel product) async {
    await UpdateProductServices().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: pricee == null ? product.price.toString() : pricee!,
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
