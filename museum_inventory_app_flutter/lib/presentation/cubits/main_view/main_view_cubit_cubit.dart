import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/enums/page_type.dart';

part 'main_view_cubit_state.dart';
part 'main_view_cubit_cubit.freezed.dart';

class MainViewCubit extends Cubit<MainViewState> {
  MainViewCubit() : super(const MainViewState.initial(PageType.items));

  void changed(PageType page) => emit(MainViewState.changed(page));
}
