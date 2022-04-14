import 'package:flutter/material.dart';
import 'package:project_intern/common/config/image_constants.dart';

class DialogForApp extends StatelessWidget {
  const DialogForApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Image.network(
            'https://baoquocte.vn/stores/news_dataimages/linhnguyen/052020/15/16/4023_fff-14_42_15_169.jpg'));
  }
}
