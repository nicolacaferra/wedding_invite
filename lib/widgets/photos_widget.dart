import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wedding_nr/data/constants.dart';
import 'package:wedding_nr/utils/styles.dart';

class PhotosWidget extends StatelessWidget {
  const PhotosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enableInfiniteScroll: true,
        // enlargeCenterPage: true,
        // autoPlayCurve: Curves.bounceIn,
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: Constants.getCarouselImages().map((imageLink) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              color: Styles.surfaceColor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SizedBox(
                width: deviceSize.width,
                child: Image.network(
                  imageLink,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
