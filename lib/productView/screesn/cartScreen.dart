import 'package:e_commerce/productView/model/productDetails.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatelessWidget {

  List<productDetails> cartmaker = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Products'),
          centerTitle: true,
        ),

        body: Column(
          children: [

            ListView.builder(
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [

                        InkWell(
                         /* onTap: (){
                            _valueSetter(productList[index]);
                          },*/
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                  height: 80,
                                  width: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Image.network('${cartmaker[index].imageUrl}'),
                                  )),
                              SizedBox(width: 12,),
                              Text('${cartmaker[index].title}'),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Text('\$${cartmaker[index].price}'),
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
              itemCount: cartmaker.length,
            ),

          ],
        )
    );
  }
}
