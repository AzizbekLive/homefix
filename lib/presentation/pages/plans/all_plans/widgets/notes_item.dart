import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homefix/presentation/styles/path/app_resources.dart';

import '../../../../styles/colors/app_colors.dart';

class NotesItem extends StatefulWidget {
  final String title;
  final String date;
  final bool initialStatus;
  final ValueChanged<bool> onStatusChanged;
  final isClickable;

  const NotesItem({
    super.key,
    required this.title,
    required this.date,
    required this.initialStatus,
    required this.onStatusChanged,
    this.isClickable = false
  });

  @override
  _NotesItemState createState() => _NotesItemState();
}

class _NotesItemState extends State<NotesItem> {
  late bool _status;

  @override
  void initState() {
    super.initState();
    _status = widget.initialStatus;
  }

  void _onChanged(bool? newValue) {
    if (!widget.isClickable) return;
    setState(() {
      _status = newValue ?? false;
    });
    widget.onStatusChanged(_status);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grayEE, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => _onChanged(!_status),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _status ? Colors.transparent : Colors.transparent,
                border: Border.all(
                  color: _status ? AppColors.lightGreen : Colors.grey,
                  width: 3.0,
                ),
              ),
              child: _status
                  ? Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset(AppResources.svgTick),
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
