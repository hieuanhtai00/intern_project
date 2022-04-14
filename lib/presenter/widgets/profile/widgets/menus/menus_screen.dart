import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/presenter/widgets/profile/cubit/profile_cubit.dart';

class Menus extends StatelessWidget {
  Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'http://baohagiang.vn/file//dataimages/202005/original/images1462694_vna_potal_ky_niem_ngay_quoc_te_thieu_nhi_1_6_va_50_nam_thuc_hien_di_chuc_chu_tich_ho_chi_minh_tinh_cam_cua_bac_ho_voi_thieu_nhi_viet_n_091409829_stand.jpg',
        fit: BoxFit.contain,
      ),
    );
  }
}
