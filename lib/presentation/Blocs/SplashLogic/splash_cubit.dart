import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
  Future<void> startTimer() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      emit(SplashTimerEnded());
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
