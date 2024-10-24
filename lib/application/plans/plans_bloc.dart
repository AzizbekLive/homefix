import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homefix/domain/plans/i_plans_facade.dart';

import '../../infrastructure/models/plans/create/plans_create.dart';
import '../../infrastructure/models/plans/update/plans_update.dart';

part 'plans_event.dart';
part 'plans_state.dart';
part 'plans_bloc.freezed.dart';

class PlansBloc extends Bloc<PlansEvent, PlansState> {
  final IPlansFacade plansRepo;

  PlansBloc(this.plansRepo) : super(const PlansState.initial()) {

    on<_FetchPlans>((event, emit) async {
      emit(const PlansState.loading());
      try {
        final plans = await plansRepo.getAllPlans();
        emit(PlansState.loaded(plans: plans));
      } catch (e) {
        emit(PlansState.error(message: e.toString()));
      }
    });

    on<_CreatePlan>((event, emit) async {
      emit(const PlansState.loading());
      try {
        await plansRepo.createPlan(event.plan);
        final updatedPlans = await plansRepo.getAllPlans();
        emit(PlansState.loaded(plans: updatedPlans));
      } catch (e) {
        emit(PlansState.error(message: e.toString()));
      }
    });

    on<_UpdatePlan>((event, emit) async {
      emit(const PlansState.loading());
      try {
        await plansRepo.updatePlan(event.plan);
        final updatedPlans = await plansRepo.getAllPlans();
        emit(PlansState.loaded(plans: updatedPlans));
      } catch (e) {
        emit(PlansState.error(message: e.toString()));
      }
    });
  }
}
