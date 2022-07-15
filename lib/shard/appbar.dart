import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';
import '../screens/checkout.dart';





class ProductsAndPrce extends StatelessWidget {
  const ProductsAndPrce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
             Consumer<Cart>(
  builder: ((context, classInstancee, child) {
  return Row(children: [
    Stack(children: [
      Positioned(bottom: 24, child: Container(
        child: Text("${classInstancee.selectedProducts.length}", style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      padding: EdgeInsets.all(5), decoration: BoxDecoration(color: Color.fromARGB(255, 82, 114, 83), shape: BoxShape.circle),), ),
   IconButton(onPressed: (){
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckOut(),
          ),);

   }, icon: Icon(Icons.add_shopping_cart),) ],),
  ],);
})),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child:  Consumer<Cart>(
  builder: ((context, classInstancee, child) {
  return Text("${classInstancee.price}");
})),
              ),
            ],
          );
    
  }
}