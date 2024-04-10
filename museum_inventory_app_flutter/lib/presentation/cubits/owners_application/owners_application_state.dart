part of 'owners_application_cubit.dart';

@freezed
class OwnersApplicationState with _$OwnersApplicationState {
  const factory OwnersApplicationState.initial() = _OwnersApplicationState;

  const factory OwnersApplicationState.formChanged({
    // required OwnersApplication ownersApplication,
    required Set<int> itemIds,
  }) = _OwnersApplicationFormChanged;

  const factory OwnersApplicationState.error() = _OwnersApplicationError;
}
