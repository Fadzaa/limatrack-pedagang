import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/constant.dart';
import '../../../common/theme.dart';

class CommonWarningBox extends StatelessWidget {
  const CommonWarningBox({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: warningColorLight,
          borderRadius: BorderRadius.circular(16)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icWarning),

          const SizedBox(width: 10,),

          Flexible(
            child: Text(text,
              style: tsLabelLarge.copyWith(
                  fontWeight: FontWeight.w500,
                  color: warningColor
              ),
            ),
          )
        ],
      ),
    );
  }
}
