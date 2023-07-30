import 'package:get/get.dart';

import '../screens/style/app_theme.dart';


class ThemeController extends GetxService {
  static ThemeController get to => Get.find();

  // dark mode
  final RxBool _isDarkModel = Get.isDarkMode.obs;
  bool get isDarkModel => _isDarkModel.value;

  // switch mode
  void switchThemeModel() {
    _isDarkModel.value = !_isDarkModel.value;
    Get.changeTheme(
      _isDarkModel.value == true ? AppTheme.dark : AppTheme.light,
    );
  }
}
