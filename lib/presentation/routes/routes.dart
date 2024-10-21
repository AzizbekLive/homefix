import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homefix/application/plans/plans_bloc.dart';
import 'package:homefix/infrastructure/repositories/plans_repo.dart';
import 'package:homefix/presentation/pages/dashboard/dashboard_page.dart';
import 'package:homefix/presentation/pages/home/home_page.dart';
import 'package:homefix/presentation/pages/message/message_page.dart';
import 'package:homefix/presentation/pages/plans/add_plans/add_plans_page.dart';
import 'package:homefix/presentation/pages/plans/all_plans/all_plans_page.dart';
import 'package:homefix/presentation/pages/profile/profile_page.dart';


class Routes {
  static PageRoute onGenerateRoute({
    required BuildContext context,
  }) {
    return getDashboardPage();
  }

  static PageRoute getAllPlansPage() => MaterialPageRoute(
    builder: (_) => const AllPlansPage(),
  );

  static PageRoute getHomePage() => MaterialPageRoute(
    builder: (_) => const HomePage(),
  );

  static PageRoute getMessagePage() => MaterialPageRoute(
    builder: (_) => const MessagePage(),
  );

  static PageRoute getProfilePage() => MaterialPageRoute(
    builder: (_) => const ProfilePage(),
  );

  static PageRoute getDashboardPage() => MaterialPageRoute(
    builder: (_) => const DashboardPage(),
  );

  static PageRoute getAddPlansPage() => MaterialPageRoute(builder: (_) => BlocProvider(
    create: (context) => PlansBloc(
      context.read<PlansRepo>(),
    ),
    child: const AddPlansPage(),
  ));
}
