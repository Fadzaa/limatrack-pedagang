import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../common/constant.dart';
import '../../../../../../common/theme.dart';

class ItemJajanHorizontal extends StatelessWidget {
  const ItemJajanHorizontal({
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
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.40,
      height: width * 0.42,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(exampleJajan), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(16),

      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Row(
                    children: [

                      SvgPicture.asset(icStar),

                      const SizedBox(width: 5,),

                      Text(rating.toString(),
                        style: tsBodySmall.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  name,
                  style: tsBodySmall.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),


              isHalal ? Image.asset(icHalal) : Container()

            ],
          )
        ],
      ),
    );
  }
}
