import '../../infrastructure/models/plans/create/plans_create.dart';
import '../../infrastructure/models/plans/update/plans_update.dart';

abstract class IPlansFacade {
  Future<void> createPlan(PlansCreate plan);
  Future<void> updatePlan(PlansUpdate plan);
  Future<PlansCreate?> getPlanById(int id);
  Future<List<PlansCreate>> getAllPlans();
}
