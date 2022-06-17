import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page Orchid'),
      ),
      body: ListView(
        children: <Widget>[
          ImageSlideshow(
            /// Width of the [ImageSlideshow].
            width: double.infinity,

            /// Height of the [ImageSlideshow].
            height: 200,

            /// The page to show when first creating the [ImageSlideshow].
            initialPage: 0,

            /// The color to paint the indicator.
            indicatorColor: Colors.blue,

            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.grey,

            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              Image.asset(
                'assets/asset1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/asset2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/asset3.jpg',
                fit: BoxFit.cover,
              ),
            ],

            /// Called whenever the page in the center of the viewport changes.
            onPageChanged: (value) {
              print('Page changed: $value');
            },

            /// Auto scroll interval.
            /// Do not auto scroll with null or 0.
            autoPlayInterval: 3000,

            /// Loops back to first slide.
            isLoop: true,
          ),
          // Logo
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/asset-logo.jpg',
                height: 80,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: Text(
              'Wisata Orchid',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}