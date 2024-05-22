import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../common/theme.dart';
import 'edukasi_pedagang_page_controller.dart';

class EdukasiPedagangPageView extends GetView<EdukasiPedagangPageController> {
  const EdukasiPedagangPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Scaffold(
      backgroundColor: baseColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          backgroundColor: baseColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Edukasi Pedagang",
            style: GoogleFonts.poppins(
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: width * 0.05,
            right: width * 0.05,
            bottom: height * 0.02,
            top: height * 0.01,
          ),
          child: Stack(
            children: [
              Container(
                width: width,
                height: height * 1.16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                        top: height * 0.02,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: width * 0.02),
                            width: width * 0.013,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: dangerColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          SizedBox(width: width * 0.01),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Zona Terlarang Pedagang",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: height * 0.0005),
                              Text(
                                "Kudus, Jawa Tengah",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: dangerColor.withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.02,
                        ),
                        child: Text(
                          "Himbauan untuk menghindari berjualan di daerah yang berzona merah seperti:",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: dangerColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: height * 0.01,
                            left: width * 0.05,
                          ),
                          child: Text(
                            "• Jalan Raya Kudus - Demak",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: height * 0.035),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: width * 0.02),
                            width: width * 0.013,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: warningColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          SizedBox(width: width * 0.01),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Perizinan Pedagang Kaki Lima",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: height * 0.0005),
                              Text(
                                "Izin berdagang di tempat umum",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.05),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.03,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Setiap PKL wajib memperoleh izin dari Bupati melalui Kepala Dinas Perdagangan dan Pengelolaan Pasar.",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor,
                              ),
                            ),
                            SizedBox(height: height * 0.025),
                            Text(
                              "Permohonan izin secara tertulis kepada Bupati melalui Kepala Dinas Perdagangan dan Pengelolaan Pasar dengan mengisi formulir yang disediakan dengan dilampiri :",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Padding(
                      padding: EdgeInsets.only(
                        right: width * 0.05,
                        left: width * 0.05,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "• Foto copy Kartu Tanda Penduduk",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                          SizedBox(height: height * 0.015),
                          Text(
                            "• Surat Keterangan dari Kepala Desa setempat bagi PKL dari luar daerah",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                          SizedBox(height: height * 0.015),
                          Text(
                            "• Foto hitam putih ukuran 4 x 6 sebanyak 2 (dua) lembar",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                          SizedBox(height: height * 0.015),
                          Text(
                            "• Surat pernyataan sanggup mentaati peraturan perundang-undangan yang berlaku",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.15),
                    Container(
                      width: width * 0.4,
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Text(
                        "Pemerintah Kab. Kudus",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  "assets/svg/sales_education.svg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
