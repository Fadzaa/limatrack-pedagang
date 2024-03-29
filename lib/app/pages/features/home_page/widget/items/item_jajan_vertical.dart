import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../common/constant.dart';
import '../../../../../../common/theme.dart';

class ItemJajanVertical extends StatelessWidget {
  const ItemJajanVertical({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.isHalal,
  });

  final String image, name;
  final double rating;
  final bool isHalal;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.15,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(exampleJajan), fit: BoxFit.fitWidth),
        borderRadius: BorderRadius.circular(16),
        color: primaryColor
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: tsBodySmall.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
              ),

              Container(
                height: 25,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Row(
                    children: [

                      SvgPicture.asset(icStar),

                      const SizedBox(width: 5,),

                      Text(rating.toString(), style: tsBodySmall.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
              ),

            ],
          ),


          isHalal ? Image.asset(icHalal) : Container()

        ],
      )
    );
  }
}
