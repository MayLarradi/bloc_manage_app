import 'package:chat_bloc_manage/ui/pages/counter.bloc.page.dart';
import 'package:chat_bloc_manage/ui/pages/counter.stateful.page.dart';
import 'package:chat_bloc_manage/ui/pages/git.users.page.dart';
import 'package:chat_bloc_manage/ui/pages/home.page.dart';
import 'package:chat_bloc_manage/ui/themes/theme.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return MaterialApp(
        theme: state.themeData,
        routes: <String, WidgetBuilder>{
          "/": (context) => const HomePage(),
          "/counter1": (context) => const CounterStatefulPage(),
          "/counter2": (context) => const CounterBlocPage(),
          "/users": (context) => const GitUsersPage(),
        },
      );
    });
  }
}
