import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../second/bloc/second_bloc.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
      ),
      body: BlocBuilder<SecondBloc, SecondState>(builder: (context, state) {
        if (state is SecondInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SecondLoaded) {
          return _info(state);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }

  _info(state) {
    return Column(children: <Widget>[
      Text('Идентификатор:  ${state.item.id}'),
      Text('Заголовок:  ${state.item.title}'),
      Text('Сообщение:  ${state.item.body}'),
    ]);
  }
}
