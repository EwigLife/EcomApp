import 'package:flutter/material.dart';



class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod1.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod3.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod4.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod5.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod6.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod2.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod7.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod8.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod9.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },
    {
      'name' : 'White Dress', 
      'picture' :'assets/Products/prod10.jpeg',
      'old_price' : 12000,
      'price': 6000,
    },

  ];



  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,),
      itemBuilder: (BuildContext context, int index) {
        return SingleProducts(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old_price'],
          prodPrics: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProducts extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrics;

  const SingleProducts({Key key, 
  this.prodName, 
  this.prodPicture, 
  this.prodOldPrice, 
  this.prodPrics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName, 
        child: Material(
          child: InkWell(onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(prodName,),
              ),
            ),
            child: Image.asset(prodPicture,
            fit: BoxFit.cover,
            ),
          ),
        ),
        ),
    ),);
  }
}