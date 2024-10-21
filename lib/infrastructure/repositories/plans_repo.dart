import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:homefix/infrastructure/models/plans/create/plans_create.dart';
import '../../domain/plans/i_plans_facade.dart';
import '../models/plans/update/plans_update.dart';

class PlansRepo implements IPlansFacade {
  static const String _plansKey = 'plans_key';

  // Singleton implementation
  static final PlansRepo _instance = PlansRepo._internal();
  PlansRepo._internal();
  factory PlansRepo() => _instance;

  Future<SharedPreferences> get _prefs async => await SharedPreferences.getInstance();

  @override
  Future<void> createPlan(PlansCreate plan) async {
    final prefs = await _prefs;

    final savedPlansJson = prefs.getString(_plansKey) ?? '{}';
    final Map<String, dynamic> savedPlans = jsonDecode(savedPlansJson);

    final int newId = DateTime.now().millisecondsSinceEpoch;
    plan.id = newId;

    savedPlans[plan.id.toString()] = plan.toJson();

    await prefs.setString(_plansKey, jsonEncode(savedPlans));
  }

  @override
  Future<PlansCreate?> getPlanById(int id) async {
    final prefs = await _prefs;

    final savedPlansJson = prefs.getString(_plansKey) ?? '{}';
    final Map<String, dynamic> savedPlans = jsonDecode(savedPlansJson);

    final planJson = savedPlans[id.toString()];
    if (planJson != null) {
      return PlansCreate.fromJson(planJson);
    }
    return null;
  }

  @override
  Future<List<PlansCreate>> getAllPlans() async {
    final prefs = await _prefs;

    final savedPlansJson = prefs.getString(_plansKey) ?? '{}';
    final Map<String, dynamic> savedPlans = jsonDecode(savedPlansJson);

    return savedPlans.values
        .map((planJson) => PlansCreate.fromJson(planJson))
        .toList();
  }

  @override
  Future<void> updatePlan(PlansUpdate updatedPlan) async {
    final prefs = await _prefs;
    final savedPlansJson = prefs.getString(_plansKey) ?? '{}';
    final Map<String, dynamic> savedPlans = jsonDecode(savedPlansJson);

    if (savedPlans.containsKey(updatedPlan.id.toString())) {
      savedPlans[updatedPlan.id.toString()] = updatedPlan.toJson();
      await prefs.setString(_plansKey, jsonEncode(savedPlans));
    } else {
      print('Plan with ID ${updatedPlan.id} not found for update.');
    }
  }
}
