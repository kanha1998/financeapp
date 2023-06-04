import 'package:financeapp/bloc/top_users/top_users_bloc.dart';
import 'package:financeapp/bloc/top_users/top_users_state.dart';
import 'package:financeapp/router.dart';
import 'package:financeapp/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [

      BlocProvider<TopUserBloc>(create: (BuildContext context)=> TopUserBloc( TopUserListState())),
    ],
    child: MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false),
  ));
}

