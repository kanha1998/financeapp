

import 'package:financeapp/bloc/top_users/top_users_event.dart';
import 'package:financeapp/bloc/top_users/top_users_state.dart';
import 'package:financeapp/models/users_list.dart';
import 'package:financeapp/repository/top_user_repository/top_user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopUserBloc extends Bloc<TopUserEvent,TopUserState>
{

  TopUserBloc(TopUserState state):super(state){

   on((event,state) async{

     if(event is TopUserFetch)
       {

         final UsersList usersList;

         usersList =  await repository.getTopUser();

         emit(TopUserListState(usersList: usersList));
       }
   });

  }
  TopUserRepository repository =TopUserRepository();







}