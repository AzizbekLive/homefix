import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homefix/infrastructure/models/plans/update/plans_update.dart';
import 'package:homefix/presentation/pages/plans/all_plans/widgets/notes_item.dart';
import 'package:homefix/presentation/styles/colors/app_colors.dart';

import '../../../../application/plans/plans_bloc.dart';
import '../../../../infrastructure/repositories/plans_repo.dart';
import '../../../routes/routes.dart';
import '../../../styles/path/app_resources.dart';
import '../../../styles/theme/app_theme.dart';

class AllPlansPage extends StatefulWidget {
  const AllPlansPage({super.key});

  @override
  _AllPlansPageState createState() => _AllPlansPageState();
}

class _AllPlansPageState extends State<AllPlansPage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlansBloc(
        context.read<PlansRepo>(),
      )..add(const PlansEvent.fetchPlans()),
      child: BlocBuilder<PlansBloc, PlansState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'My Plans List',
                style: AppTheme.headlineMedium,
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, Routes.getAddPlansPage()).then((_) {
                      context
                          .read<PlansBloc>()
                          .add(const PlansEvent.fetchPlans());
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(AppResources.svgAdd),
                  ),
                ),
                const SizedBox(width: 14),
              ],
            ),
            body: _buildBody(context, state),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, PlansState state) {
    return state.when(
      initial: () => const Center(child: Text('Welcome! Start by adding some plans.')),
      loading: () => const Center(child: CircularProgressIndicator()),
      loaded: (plans) {
        final activePlans = plans.where((e) => e.status == true).toList();

        if (plans.isEmpty) {
          return const Center(child: Text('No plans available.'));
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                primary: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount: plans.length,
                itemBuilder: (ctx, index) {
                  final plan = plans[index];
                  return plan.status == false
                      ? Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: NotesItem(
                            title: plan.name ?? 'null',
                            date: DateFormat('dd.MM.yyyy')
                                .format(plan.date ?? DateTime.now()),
                            initialStatus: plan.status ?? false,
                            isClickable: true,
                            onStatusChanged: (status) {
                              context.read<PlansBloc>().add(PlansEvent.updatePlan(
                                      plan: PlansUpdate(
                                    id: plan.id,
                                    date: plan.date,
                                    name: plan.name,
                                    status: status,
                                  )));

                              context
                                  .read<PlansBloc>()
                                  .add(const PlansEvent.fetchPlans());
                              debugPrint(
                                  'Status for Plan $index changed to: $status');
                            },
                          ),
                        )
                      : const SizedBox();
                },
              ),
              if (activePlans.isNotEmpty)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          '${activePlans.length} Complated tasks ',
                          style: TextStyle(color: AppColors.lightGreen),
                        ),
                        const SizedBox(width: 8.0),
                        Icon(
                          _isExpanded
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 24.0,
                          color: AppColors.lightGreen,
                        ),
                      ],
                    ),
                  ),
                ),
              if (_isExpanded)
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: Column(
                    children: activePlans
                        .map((plan) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: NotesItem(
                                title: plan.name ?? 'null',
                                date: DateFormat('dd.MM.yyyy')
                                    .format(plan.date ?? DateTime.now()),
                                initialStatus: plan.status ?? false,
                                onStatusChanged: (status) {
                                  context
                                      .read<PlansBloc>()
                                      .add(PlansEvent.updatePlan(
                                        plan: PlansUpdate(
                                          id: plan.id,
                                          date: plan.date,
                                          name: plan.name,
                                          status: status,
                                        ),
                                      ));
                                },
                              ),
                            ))
                        .toList(),
                  ),
                ),
            ],
          ),
        );
      },
      error: (message) => Center(child: Text('Error: $message')),
    );
  }
}
