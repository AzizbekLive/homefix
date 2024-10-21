part of 'plans_bloc.dart';

@immutable
@freezed
class PlansState with _$PlansState {
  const PlansState._();

  const factory PlansState.initial() = _Initial;

  const factory PlansState.loading() = _Loading;

  const factory PlansState.loaded({
    required List<PlansCreate> plans,
  }) = _Loaded;

  const factory PlansState.error({
    required String message,
  }) = _Error;
}
