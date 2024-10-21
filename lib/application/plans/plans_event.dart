part of 'plans_bloc.dart';

@freezed
class PlansEvent with _$PlansEvent {
  const factory PlansEvent.fetchPlans() = _FetchPlans;

  const factory PlansEvent.createPlan({
    required PlansCreate plan,
  }) = _CreatePlan;

  const factory PlansEvent.updatePlan({
    required PlansUpdate plan,
  }) = _UpdatePlan;
}
