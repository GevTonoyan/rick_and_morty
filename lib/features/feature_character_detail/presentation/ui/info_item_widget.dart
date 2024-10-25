import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/core/ui_kit/theming/app_theme.dart';
import 'package:rick_and_morty/core/ui_kit/widgets/app_circle.dart';

class InfoItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final String iconPath;

  const InfoItemWidget({
    super.key,
    required this.title,
    required this.value,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          AppCircle(
            child: SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                appTheme.colorPalette.whiteSmoke,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: appTheme.typography.bodyMedium.copyWith(
                  color: appTheme.colorPalette.grey,
                ),
              ),
              Text(
                value,
                style: appTheme.typography.subtitleBold.copyWith(
                  color: appTheme.colorPalette.nero,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
