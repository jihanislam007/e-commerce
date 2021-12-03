import 'package:e_commerce/productView/model/productDetails.dart';
import 'package:flutter/material.dart';

import 'DetailsView.dart';

class SearchProduct extends StatelessWidget {

  List<productDetails> productList = [
    productDetails('product 1',60,'Product 1 details','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/800px-Flag_of_Bangladesh.svg.png'),
    productDetails('product 2',20,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 3',40,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 4',50,'Product 3 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 5',20,'Product 2 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 6',60,'''A young couple sneaks into the Nath Villa, a huge bungalow in Goa, only to discover that a ghost haunts the house, causing them to flee. Days later, Aditya Sharma and his wife Anjali Sharma move into the house with their young son, Aman "Banku" Sharma. Aditya is an engineer working on a cruise line who soon bids Anjali and Banku a brief farewell. Days after Aditya's departure, Anjali hires Anthony, a drunk thief, as a housekeeper. One night, Banku encounters the ghost, whose name is Kailash Nath. Banku nicknames him Bhoothnath, a portmanteau of bhoot (ghost in Hindi) and Nath, his surname.''','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/800px-Flag_of_Bangladesh.svg.png'),
    productDetails('product 7',20,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 8',40,'Product 4 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 9',50,'Product 3 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg'),
    productDetails('product 10',20,'Product 2 details','https://storage.googleapis.com/interrelatiegeschenken_public/thumbnail/c5/1c/09/1618455402/A24-A24-0783-832f9fa658931ec05ea132ebd3cf9f11eec6238d4e5e5d4e7c201a54c2bc0370_1920x1920.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [



          Expanded(
            child: GridView.builder(
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [

                        InkWell(
                          onTap: (){
                            //_valueSetter(productList[index]);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> cartScreen(productList[index])));
                          },
                          child: Column(
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }



}
