part of 'owners_application_list_cubit.dart';

@freezed
class OwnersApplicationListState with _$OwnersApplicationListState {
  const factory OwnersApplicationListState.initial() =
      _OwnersApplicationListState;

  const factory OwnersApplicationListState.ownersApplicationLoaded({
    required List<OwnersApplication> ownersApplication,
  }) = _OwnersApplicationLoaded;

  const factory OwnersApplicationListState.error() = _OwnersApplicationError;
}
