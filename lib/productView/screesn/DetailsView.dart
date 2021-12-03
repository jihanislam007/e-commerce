import 'package:e_commerce/productView/model/productDetails.dart';
import 'package:e_commerce/productView/screesn/ProductView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'orderConfirmation.dart';

class cartScreen extends StatefulWidget {
  late final productDetails productDetail;

  cartScreen(this.productDetail);

  @override
  _cartScreenState createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Products'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                              height: 280,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, right: 12),
                                child: Image.network(
                                  '${widget.productDetail.imageUrl}',
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),

                        SizedBox(
                          width: 12,
                        ),
                        Text('${widget.productDetail.title}'),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Text('\$${widget.productDetail.price}'),
                        ),

                        SizedBox(
                          width: 12,
                        ),
                        Text('${widget.productDetail.details}'),

                        //SizedBox(height: 12,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, bottom: 4, top: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if(count>0){
                                        count--;
                                      }else{
                                        Fluttertoast.showToast(msg: 'Invalid apply', toastLength: Toast.LENGTH_LONG);
                                      }
                                      
                                    });
                                  },
                                  child: Center(child: Text('-'))),
                            ),
                            Expanded(
                              child: Center(child: Text('$count')),
                            ),
                            Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  child: Center(child: Text('+'))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderConfirmation(
                                          widget.productDetail, count)));
                            },
                            child: Center(child: Text('Add to cart'))),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
