import 'package:bloc/bloc.dart';
import 'package:flutter_core/theme/cubit/theme_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/app_key.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());
  Future<void> toggedTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    emit(state.copyWith(status: ThemeStatus.loading));
    emit(state.copyWith(isDark: !state.isDark, status: ThemeStatus.success));
    prefs.setBool(AppKey.IS_DARK, state.isDark);
  }

  Future<void> initTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(state.copyWith(status: ThemeStatus.loading));
    bool value = prefs.getBool(AppKey.IS_DARK) ?? false;
    emit(state.copyWith(isDark: value, status: ThemeStatus.success));
  }
}
