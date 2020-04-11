import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class MealScheduleEvent extends Equatable {
  const MealScheduleEvent();

  @override
  List<Object> get props => [];
}

class DateChanged extends MealScheduleEvent {
  final DateTime selectedDate;

  const DateChanged({@required this.selectedDate});

  @override
  List<Object> get props => [selectedDate];

  @override
  String toString() => 'DateChanged { selectedDate :$selectedDate }';
}

class MealSelectionChanged extends MealScheduleEvent {
  final Map<String, bool> mealsSelection;

  const MealSelectionChanged({@required this.mealsSelection});

  @override
  List<Object> get props => [mealsSelection];

  @override
  String toString() => 'MealSelectionChanged { mealsSelection: $mealsSelection }';
}

class Submitted extends MealScheduleEvent {
  final DateTime selectedDate;
  final Map<String, bool> mealsSelection;

  const Submitted({
    @required this.selectedDate,
    @required this.mealsSelection,
  });

  @override
  List<Object> get props => [selectedDate, mealsSelection];

  @override
  String toString() {
    return 'Submitted { selectedDate: $selectedDate, mealsSelection: $mealsSelection }';
  }
}