import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homefix/application/plans/plans_bloc.dart';
import 'package:homefix/infrastructure/models/plans/create/plans_create.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:homefix/presentation/styles/colors/app_colors.dart';
import 'package:homefix/presentation/styles/path/app_resources.dart';
import '../../../widgets/custom_textfield.dart';

class AddPlansPage extends StatefulWidget {
  const AddPlansPage({Key? key}) : super(key: key);

  @override
  _AddPlansPageState createState() => _AddPlansPageState();
}

class _AddPlansPageState extends State<AddPlansPage> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  late TextEditingController _nameController;

  String _getMonthName(int month) {
    const List<String> months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
    _nameController = TextEditingController();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlansBloc, PlansState>(
      listener: (context, state) {
        state.maybeWhen(
            loaded: (plans) {
              Navigator.pop(context);
            },
            orElse: () {
            }
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppResources.svgArrowRight),
                      ),
                    ),
                    const Text(
                      'Add New Plan',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SourceSans3',
                      ),
                    ),
                  ],
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child: Text(
                      'Plan name',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SourceSans3',
                        color: AppColors.gray65,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: CustomTextField(
                      hintText: 'Plan name',
                      controller: _nameController,
                      backgroundColor: AppColors.grayEE,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '${_getMonthName(_selectedDay.month)} ${_selectedDay.year}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TableCalendar<DateTime>(
                      firstDay:
                          DateTime(_focusedDay.year, _focusedDay.month, 1),
                      lastDay: DateTime(
                        _focusedDay.year,
                        _focusedDay.month + 1,
                        0,
                      ),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (day) =>
                          isSameDay(day, _selectedDay),
                      onDaySelected: _onDaySelected,
                      calendarFormat: CalendarFormat.month,
                      headerVisible: false,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      daysOfWeekStyle: const DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        weekendStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      calendarStyle: const CalendarStyle(
                        weekendTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSans3'),
                        holidayTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSans3',
                            color: Colors.white),
                        disabledTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSans3',
                            color: Colors.white),
                        rangeEndTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSans3',
                            color: Colors.white),
                        rangeStartTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSans3',
                            color: Colors.white),
                        selectedTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSans3',
                            color: Colors.white),
                        todayTextStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SourceSans3',
                        ),
                        defaultTextStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SourceSans3',
                        ),
                        selectedDecoration: BoxDecoration(
                          color: Color(0xFF26BDBE),
                          shape: BoxShape.circle,
                        ),
                        todayDecoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        defaultDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                      locale: 'ru',
                    ),
                  ),
                  const Spacer(flex: 2),
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (_nameController.text.isEmpty) return;
                        context.read<PlansBloc>().add(PlansEvent.createPlan(
                            plan: PlansCreate(
                                name: _nameController.text,
                                date: _selectedDay,
                                status: false)));
                      },
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            color: AppColors.lightGreen,
                            borderRadius: BorderRadius.circular(52)),
                        child: const Center(
                            child: Text(
                          'Saqlash',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SourceSans3',
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
