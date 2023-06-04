
import 'package:financeapp/models/users_list.dart';
import 'package:flutter/material.dart';

class TopUsersPeople extends StatelessWidget {
  const TopUsersPeople({Key? key,required this.usersList}) : super(key: key);
 final UsersList? usersList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("TOP USERS FROM YOUR COMMUNITY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
        const SizedBox(height: 20,),

        Container(
          width: double.infinity,
          height: 60,
          child: ListView.builder(
           scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: usersList?.userList?.length??0 ,
              itemBuilder: (BuildContext,index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                    backgroundImage: NetworkImage("https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200"),
                  ),
                    SizedBox(height: 4,),
                    Expanded(
                      child: Text(
                        usersList?.userList?[index].username??"",
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        )
      ]
    );
  }
}
