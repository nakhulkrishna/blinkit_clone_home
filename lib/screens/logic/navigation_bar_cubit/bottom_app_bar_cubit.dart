import 'package:clone_blinkit/screens/logic/navigation_bar_cubit/bottom_app_bar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarState(0));

  void updateIndex(int index) {
    emit(BottomBarState(index));
  }
}
