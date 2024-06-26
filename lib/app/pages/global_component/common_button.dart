import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/constant.dart';
import '../../../common/theme.dart';

class CommonButton extends StatelessWidget {
   CommonButton({
    super.key,
     required this.text,
     required this.onPressed,
     this.width,
     this.height,
     this.style,
     this.borderRadius
   });

    String text;
    double? width;
    double? height;
    VoidCallback? onPressed;
    TextStyle? style;
    double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed ?? null,
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          fixedSize: Size(width ?? double.maxFinite, height ?? 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 10)
          ),
          disabledBackgroundColor: const Color(0xFFBABABA)
        ),
        child: Text(
          text,
          style: style ?? tsBodyMedium.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        )

    );
  }
}

class CommonButtonGoogle extends StatelessWidget {
  const CommonButtonGoogle({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => null,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.black.withOpacity(0.5),
          foregroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          elevation: 1.2
        ),


        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Masuk dengan Google",
              style: tsBodySmall
            ),

            const SizedBox(width: 10,),

            SvgPicture.asset(icGoogle, width: 20, height: 20,),

          ],
        )

    );
  }
}

class CommonButtonOutline extends StatelessWidget {
  CommonButtonOutline({
    super.key,
    required this.text,
    required this.onPressed,
    this.style
  });

  String text;
  VoidCallback onPressed;
  TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          fixedSize: const Size(double.maxFinite, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: primaryColor,
                width: 1
              )
          ),
        ),

        child: Text(
          text,
          style: style ?? tsBodyMedium.copyWith(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        )

    );
  }
}
