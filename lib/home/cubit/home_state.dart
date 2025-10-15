import 'package:equatable/equatable.dart';

enum HomeTab { todos,stats }

final class HomeState extends Equatable {
  const HomeState({
    this.tab =HomeTab.todos,
});
  final HomeTab tab;

  @override
  // TODO: implement props
  List<Object?> get props =>[tab];
}