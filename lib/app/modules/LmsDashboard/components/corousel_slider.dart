import 'package:carousel_slider/carousel_slider.dart';
import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LmsCarouselSlider extends StatelessWidget {
  const LmsCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstants.LMSDASHBOARD),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstants.LMSDASHBOARD),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 310.h,
        enlargeCenterPage: true,
        // autoPlay: true,
        aspectRatio: 16 / 9,
        // autoPlayCurve: Curves.fastOutSlowIn,
        // enableInfiniteScroll: true,
        // autoPlayAnimationDuration: Duration(milliseconds: 100),
        viewportFraction: .90,
      ),
    );
  }
}
