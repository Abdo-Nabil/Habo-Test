import 'package:flutter/material.dart';

class OneDay extends StatelessWidget {
  const OneDay({
    Key? key,
    required this.date,
    required this.color,
    this.child,
  }) : super(key: key);

  final DateTime date;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
        elevation: 3,
        shadowColor: Theme.of(context).shadowColor,
        child: Container(
          alignment: Alignment.center,
          child: child ??
              Center(
                child: Text(
                  date.day.toString(),
                  style: TextStyle(
                      color: (date.weekday > 5) ? Colors.red[300] : null),
                ),
              ),
        ),
      ),
    );
  }
}
