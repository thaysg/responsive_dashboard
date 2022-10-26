import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_easy/core/app_assets.dart';
import 'package:shop_easy/core/app_colors.dart';

class ImageNetworkAvatar extends StatelessWidget {
  final String imagePath;

  const ImageNetworkAvatar({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imagePath,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: 20,
        backgroundColor: lilyWhite,
        child: ClipOval(
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            imagePath,
            width: 40,
            height: 50,
            fit: BoxFit.fill,
          ),
        ),
      ),
      errorWidget: (context, url, error) => CircleAvatar(
        backgroundColor: primaryDark,
        radius: 20,
        child: Center(
          child: SvgPicture.asset(
            user,
            color: secondaryDark,
            fit: BoxFit.cover,
            width: 15,
          ),
        ),
      ),
    );
  }
}
