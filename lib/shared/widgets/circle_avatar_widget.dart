import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: '',
      imageBuilder: (context, imageProvider) => const CircleAvatar(
        radius: 17,
        backgroundColor: lilyWhite,
        backgroundImage: NetworkImage(
          'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
        ),
      ),
      errorWidget: (context, url, error) => const CircleAvatar(
        backgroundColor: lilyWhite,
        radius: 17,
        child: Center(
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}
