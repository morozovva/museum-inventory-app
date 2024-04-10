part of 'act_vh_efzk_list_cubit.dart';

@freezed
class ActVhEfzkListState with _$ActVhEfzkListState {
  const factory ActVhEfzkListState.initial() = _ActVhEfzkListState;

  const factory ActVhEfzkListState.actVhEfzksLoaded({
    required List<ActVHEFZK> actVhEfzks,
  }) = _ActVhEfzkLoaded;

  const factory ActVhEfzkListState.error() = _ActVhEfzkError;
}
