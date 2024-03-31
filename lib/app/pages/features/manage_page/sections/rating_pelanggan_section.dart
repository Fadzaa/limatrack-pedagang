import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/items/item_rating_vertical.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import 'package:limatrack_pedagang/common/constant.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class RatingPelangganSection extends StatelessWidget {
  const RatingPelangganSection({super.key});

  @override
  Widget build(BuildContext context) {
    List listRating = [
      {
        "name": "Rating",
        "count": 4.5,
        "iconCount": Icons.star_rate_rounded,
        "image": vectorRating
      },
      {
        "name": "Test",
        "count": 100,
        "iconCount": Icons.person,
        "image": vectorPelanggan
      }
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text("Rating Pelanggan", style: tsBodyLarge.copyWith(
                fontWeight: FontWeight.w600
            ),)
        ),

        const Gap(20),

        const CommonWarningBox(text: "Rating ini diambil dari rata rata penilaian pembeli terhadap warungmu"),

        const Gap(20),

        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listRating.length,
            itemBuilder: (context, index) =>
                ItemRatingVertical(
                    name: listRating[index]["name"],
                    count: listRating[index]["count"],
                    iconCount: listRating[index]["iconCount"],
                    image: listRating[index]["image"]
                )
        )
      ],
    );
  }
}
