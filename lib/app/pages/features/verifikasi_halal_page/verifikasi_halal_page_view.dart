import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import '../../../../common/theme.dart';
import 'verifikasi_halal_page_controller.dart';

class VerifikasiHalalPageView extends GetView<VerifikasiHalalPageController> {
  const VerifikasiHalalPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Scaffold(
      backgroundColor: baseColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Verifikasi Halal",
            style: GoogleFonts.poppins(
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: width * 0.05,
          right: width * 0.05,
          bottom: height * 0.02,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonWarningBox(
                    text:
                        "Logo Halal Akan Ditampilkan di Aplikasi Pembeli Nantinya.",
                    colorType: warningColor,
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "Pilih Salah Satu*",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  InkWell(
                    onTap: () {},
                    child: DottedBorder(
                      color: greyColor.withOpacity(0.8),
                      dashPattern: [8],
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(10),
                      child: Container(
                        height: height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.photo, color: greyColor, size: 20),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Gambar",
                              style: tsBodyMedium.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: greyColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Center(
                    child: Text(
                      "atau verifikasi dengan",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  InkWell(
                    onTap: () {},
                    child: DottedBorder(
                      color: greyColor.withOpacity(0.8),
                      dashPattern: [8],
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(10),
                      child: Container(
                        height: height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.edit_document,
                                color: greyColor, size: 20),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Dokumen",
                              style: tsBodyMedium.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: greyColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Verifikasi Sekarang",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                minimumSize: Size(width, height * 0.065),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
