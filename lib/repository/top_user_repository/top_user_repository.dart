

import 'dart:convert';

import 'package:financeapp/models/users_list.dart';

import 'package:dio/dio.dart';
import 'package:financeapp/models/users_model.dart';
import 'package:financeapp/repository/base_api_provider.dart';
import 'package:flutter/cupertino.dart';


class TopUserRepository
{


   Future<UsersList> getTopUser() async {

     try {
       var response = await BaseApiProvider().apiClient!.get(
           "https://jsonplaceholder.typicode.com/users");

      Iterable l = (response.data) as List;

       List<Users> usersList = List<Users>.from(
           l.map((model) => Users.fromJson(model)));
       return UsersList(userList: usersList);
     }catch(e){
       debugPrint(e.toString());
       return UsersList();
     }
   }

}