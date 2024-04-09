part of 'owners_list_cubit.dart';

@freezed
class OwnersListState with _$OwnersListState {
  const factory OwnersListState.initial() = _OwnersListState;

  const factory OwnersListState.ownersLoaded({
    required List<Owner> owners,
  }) = _OwnersLoaded;

  const factory OwnersListState.error() = _OwnersError;
}
