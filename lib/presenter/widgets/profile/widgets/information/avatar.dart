import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/presenter/model/usermodel.dart';
import 'package:project_intern/presenter/widgets/profile/cubit/profile_cubit.dart';

class Avatar extends StatelessWidget {
  Avatar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipOval(
        child: Image.network(
          'https://images.contentstack.io/v3/assets/blt187521ff0727be24/bltbfccf51206688048/60ee111cfdd68748b2b7cd44/promo-yasuo-image.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
