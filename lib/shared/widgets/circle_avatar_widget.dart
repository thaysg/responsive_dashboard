import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_easy/core/app_assets.dart';

import '../../core/app_colors.dart';

class CircleAvatarWidget extends StatelessWidget {
  final double? radius;
  final double? errorRadius;
  final double? width;
  final String imageUrl;
  final String imagePath;
  const CircleAvatarWidget({
    Key? key,
    this.radius,
    this.errorRadius,
    this.width,
    required this.imageUrl,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: radius ?? 17,
        backgroundColor: lilyWhite,
        backgroundImage: NetworkImage(
          imagePath,
        ),
      ),
      errorWidget: (context, url, error) => CircleAvatar(
        backgroundColor: lilyWhite,
        radius: errorRadius ?? 17,
        child: Center(
          child: SvgPicture.asset(
            user,
            color: secondaryDark,
            fit: BoxFit.cover,
            width: width ?? 15,
          ),
        ),
      ),
    );
  }
}
