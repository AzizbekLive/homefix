import '../../infrastructure/models/plans/create/plans_create.dart';

abstract class PlansStorage {
  Future<void> createPlan(PlansCreate plan);
  Future<PlansCreate?> getPlanById(int id);
  Future<List<PlansCreate>> getAllPlans();
}
