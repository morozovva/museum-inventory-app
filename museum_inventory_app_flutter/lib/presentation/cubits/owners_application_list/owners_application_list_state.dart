part of 'owners_application_list_cubit.dart';

@freezed
class OwnersApplicationListState with _$OwnersApplicationListState {
  const factory OwnersApplicationListState.initial() =
      _OwnersApplicationListState;

  const factory OwnersApplicationListState.ownersApplicationsLoaded({
    required List<OwnersApplication> ownersApplications,
  }) = _OwnersApplicationLoaded;

  const factory OwnersApplicationListState.error() = _OwnersApplicationError;
}
