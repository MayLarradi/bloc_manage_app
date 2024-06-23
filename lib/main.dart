import 'package:chat_bloc_manage/bloc/counter.bloc.dart';
import 'package:chat_bloc_manage/bloc/users.bloc.dart';
import 'package:chat_bloc_manage/ui/pages/root.view.dart';
import 'package:chat_bloc_manage/ui/themes/theme.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
        BlocProvider(create: (context) => UsersBloc()),
      ],
      child: const RootView(),
    );
  }
}
