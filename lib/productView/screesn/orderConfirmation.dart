import 'package:e_commerce/productView/model/productDetails.dart';
import 'package:flutter/material.dart';

class OrderConfirmation extends StatelessWidget {
  late final productDetails productDetail;
  int total = 0;

  OrderConfirmation(this.productDetail, this.total);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network('${productDetail.imageUrl}'),
                      )),
                  SizedBox(width: 12,),
                  Text('${productDetail.title}'),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text('\$${productDetail.price}'),
                  ),


                ],
              ),
            ),
          ),

          /*ListView.builder(
                itemBuilder: (context,index){
                  return


                },
                itemCount: 10,
              ),*/

        SizedBox(width: 12,),
        Text('Total Bill : ${total*productDetail.price}'),
      ],
    ),
        ));
  }
}
