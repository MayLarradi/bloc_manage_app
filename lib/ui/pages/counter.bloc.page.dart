import 'package:chat_bloc_manage/bloc/counter.bloc.dart';
import 'package:chat_bloc_manage/ui/themes/themes.dart';
import 'package:chat_bloc_manage/ui/widget/main.drawer.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: Text(
          'Counter bloc',
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterSuccessState || state is CounterInitialState) {
              return Text(
                "Counter value => ${state.counter}",
                style: Theme.of(context).textTheme.headlineSmall,
              );
            } else if (state is CounterErrorState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Counter value => ${state.counter}",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    state.errorMessage,
                    style: CustomThemes.errorTextStyle,
                  )
                ],
              );
            } else {
              return Container();
            }
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "decre",
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 6,
          ),
          FloatingActionButton(
            heroTag: "incre",
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounterEvent());
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
