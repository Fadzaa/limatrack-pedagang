import 'package:flutter/material.dart';
import '../../../common/theme.dart';

class CommonWarningBox extends StatelessWidget {
  const CommonWarningBox({
    super.key,
    required this.text,
    this.colorType
  });

  final String text;
  final Color? colorType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colorType?.withOpacity(0.1) ?? warningColorLight,
          borderRadius: BorderRadius.circular(16)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, color: colorType ?? warningColor, size: 20,),

          const SizedBox(width: 10,),

          Flexible(
            child: Text(text,
              style: tsLabelLarge.copyWith(
                  fontWeight: FontWeight.w500,
                  color: colorType ?? warningColor
              ),
            ),
          )
        ],
      ),
    );
  }
}
