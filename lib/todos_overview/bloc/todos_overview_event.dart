import 'package:equatable/equatable.dart';
import 'package:flutter_todos/todos_overview/models/todos_view_filter.dart';
import 'package:todos_api/todos_api.dart';

sealed class TodosOverviewEvent extends Equatable {
  const TodosOverviewEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class TodosOverviewSubscriptionRequested extends TodosOverviewEvent {
  const TodosOverviewSubscriptionRequested();
}
  final class TodosOverviewTodoCompletionToggled extends TodosOverviewEvent{
    const TodosOverviewTodoCompletionToggled({
    required this.todo,
  required this.isCompleted,
  });
    final Todo todo;
    final bool isCompleted;

    @override
    List<Object> get props => [todo, isCompleted];

}

final class TodosOverviewTodoDeleted extends TodosOverviewEvent {
  const TodosOverviewTodoDeleted(this.todo);

  final Todo todo;
  @override
  List<Object> get props => [todo];
}

class TodosOverviewFilterChanged extends TodosOverviewEvent {
  const TodosOverviewFilterChanged(this.filter);

  final TodosViewFilter filter;

  @override
  List<Object> get props => [filter];
}

final class TodosOverviewUndoDeletionRequested extends TodosOverviewEvent {
  const TodosOverviewUndoDeletionRequested();
}
class TodosOverviewToggleAllRequested extends TodosOverviewEvent {
  const TodosOverviewToggleAllRequested();
}

class TodosOverviewClearCompletedRequested extends TodosOverviewEvent {
  const TodosOverviewClearCompletedRequested();
}