import 'package:flutter/material.dart';
import '../type/product_type.dart';
import '../product_image/product_image.dart';
import '../button/cart_button.dart';
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  final ProductModel product = ProductModel(
    name: "Elegant Clock",
    price: 1200,
    description:
    "A classic and stylish clock suitable for your home or office",
    image: "assets/clock.png",
    rating: 4.0,
    reviewsCount: 65,
    type: "calssic",
    material: "wood",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     backgroundColor: Colors.white,
  elevation: 0,
    leading: const Icon(Icons.arrow_back_sharp, color: Colors.black),
   actions: const [
   Padding(
      padding: EdgeInsets.only(right: 15),
    child: Icon(Icons.favorite_border, color: Colors.black),
 )
],
 ),
  body: SingleChildScrollView(
  padding: const EdgeInsets.all(20),
child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  ProductImage(image: product.image),
   const SizedBox(height: 20),
   Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
     product.name,
     style: const TextStyle(
     fontSize: 22,
      fontWeight: FontWeight.bold,
   ),
 ),
 Text(
  "\ L.E ${product.price}",
  style:
  const TextStyle(
    color: Colors.red,
      fontSize: 22,
     fontWeight: FontWeight.bold,
     ),
    )
    ],
  ),
    SizedBox(height: 10),
    Row(
     children: [
   const Icon(Icons.star, color: Colors.amber, size: 20),
 Text("${product.rating} (${product.reviewsCount} reviews)")
  ],
),
  const SizedBox(height: 15),
Text(
  product.description,
   style: const TextStyle(fontSize: 14, height: 1.5),
),
  const SizedBox(height: 20),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
 children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
 children: [
const Text("Type",
style: TextStyle(fontWeight: FontWeight.bold)),
 Container(
margin: const EdgeInsets.only(top: 5),
 padding: const EdgeInsets.symmetric(
  vertical: 5, horizontal: 10),
decoration: BoxDecoration(
 color: Colors.blue.shade100,
 borderRadius: BorderRadius.circular(10),
  ),
 child: Text(product.type),
 ),
  ],
  ),
 Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: [
 const Text("Material",
   style: TextStyle(fontWeight: FontWeight.bold)),
  Container(
    margin: const EdgeInsets.only(top: 5),
  padding: const EdgeInsets.symmetric(
    vertical: 5, horizontal: 10),
    decoration: BoxDecoration(
   color: Colors.green.shade100,
    borderRadius: BorderRadius.circular(10),
   ),
  child: Text(product.material),
 ),
    ],
   )
  ],
 ),
  const SizedBox(height: 25),
   const AddToCartButton(),
   ],
),
),
 );
  }
}
