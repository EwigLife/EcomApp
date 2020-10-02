import 'package:flutter/material.dart';


class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Center(
              child: Category(
                image_location: 'assets/images/cat/cat1.png',
                image_caption: 'Stiching'
              ),
            ),
            Center(
              child: Category(
                  image_location: 'assets/images/cat/cat2.png',
                  image_caption: 'Un Done'
              ),
            ),
            Center(
              child: Category(
                  image_location: 'assets/images/cat/cat3.png',
                  image_caption: 'Pret'
              ),
            ),
            Center(
              child: Category(
                  image_location: 'assets/images/cat/cat3.png',
                  image_caption: 'Pret'
              ),
            ),
            Center(
              child: Category(
                  image_location: 'assets/images/cat/cat3.png',
                  image_caption: 'Pret'
              ),
            ),
            Center(
              child: Category(
                  image_location: 'assets/images/cat/cat3.png',
                  image_caption: 'Pret'
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  
  Category({
    this.image_caption,
    this.image_location,
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
        child: InkWell(onTap: (){},
          child: Container(
            width: 100,
            child: ListTile(
              title: Image.asset(image_location,
              width: 50.0,
              height: 50.0),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption)),

        ),
          ),
      
      )
    );
  }
}
