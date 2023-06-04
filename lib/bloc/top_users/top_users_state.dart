
import 'package:financeapp/models/users_list.dart';

abstract class TopUserState
{
  const TopUserState();
}


class TopUserListState extends TopUserState
{
  UsersList? usersList;

  TopUserListState({this.usersList});
}