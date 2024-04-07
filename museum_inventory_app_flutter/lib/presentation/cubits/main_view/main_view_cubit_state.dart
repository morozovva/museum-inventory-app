part of 'main_view_cubit_cubit.dart';

@freezed
class MainViewState with _$MainViewState {
  const factory MainViewState.initial(PageType page) = _Initial;
  const factory MainViewState.changed(PageType page) = _Changed;
}
