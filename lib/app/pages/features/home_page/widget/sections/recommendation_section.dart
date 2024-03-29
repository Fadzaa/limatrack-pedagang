import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../router/app_pages.dart';
import '../../../../global_component/common_warning_box.dart';
import '../../model/jajan_data.dart';
import '../items/item_jajan_horizontal.dart';
import 'section_text.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SectionText(
                  heading: "Rekomendasi",
                  subHeading: "Cobain Jajanan Rekomendasi  Kami",
                  navigatedTo: Routes.HOME_PAGE
              ),

              SizedBox(height: 20),

              CommonWarningBox(text: "Produk tanpa logo halal belum tentu haram, \nnamun belum terverifikasi."),

              SizedBox(height: 20),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.width * 0.42,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: jajan_data.length,
              itemBuilder: (context, index) =>
                  ItemJajanHorizontal(
                      image: jajan_data[index].image,
                      name: jajan_data[index].name,
                      rating: jajan_data[index].rating,
                      isHalal: jajan_data[index].isHalal
                  )
          ),
        )
      ],
    );
  }
}