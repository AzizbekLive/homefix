import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:homefix/infrastructure/models/plans/create/plans_create.dart';
import '../../domain/plans/i_plans_facade.dart';

class PlansRepo implements PlansStorage {
  static const String _plansKey = 'plans_key';

  // Singleton implementation
  static final PlansRepo _instance = PlansRepo._internal();
  PlansRepo._internal();
  factory PlansRepo() => _instance;

  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  @override
  Future<void> createPlan(PlansCreate plan) async {
    final prefs = await _prefs;

    final savedPlansJson = prefs.getString(_plansKey) ?? '{}';
    final Map<String, dynamic> savedPlans = jsonDecode(savedPlansJson);

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
}
