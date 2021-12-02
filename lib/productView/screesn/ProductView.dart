import 'package:e_commerce/productView/model/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cartScreen.dart';

class ProductView extends StatelessWidget {

  late final ValueSetter<productDetails> _valueSetter;


  //ProductView(this._valueSetter);

  List<productDetails> productList = [
    productDetails('product 1',60,'Product 1 details','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/800px-Flag_of_Bangladesh.svg.png'),
    productDetails('product 2',20,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 3',40,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 4',50,'Product 3 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 5',20,'Product 2 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
  productDetails('product 1',60,'Product 1 details','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/800px-Flag_of_Bangladesh.svg.png'),
    productDetails('product 2',20,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 3',40,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 4',50,'Product 3 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 5',20,'Product 2 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Products'),
        centerTitle: true,
      ),

      body: ListView.builder(
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 20,
                child: Column(
                  children: [

                    InkWell(
                      onTap: (){
                        _valueSetter(productList[index]);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> cartScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                              height: 80,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Image.network('${productList[index].imageUrl}'),
                              )),
                          SizedBox(width: 12,),
                          Text('${productList[index].title}'),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text('\$${productList[index].price}'),
                          )

                        ],
                      ),
                    ),

                    //SizedBox(height: 12,)

                  ],
                ),
              ),
            );
          },
        itemCount: productList.length,
      ),
    );
  }
}
