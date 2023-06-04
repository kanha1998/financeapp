import 'package:financeapp/bloc/top_users/top_users_bloc.dart';
import 'package:financeapp/bloc/top_users/top_users_event.dart';
import 'package:financeapp/bloc/top_users/top_users_state.dart';
import 'package:financeapp/ui/home_page/widgets/balance_card.dart';
import 'package:financeapp/ui/home_page/widgets/people_item.dart';
import 'package:financeapp/ui/home_page/widgets/performance_chart.dart';
import 'package:financeapp/ui/home_page/widgets/top_user_people.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


import '../../color_constant.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  late TopUserBloc topUserBloc;

  @override
  void initState() {

   topUserBloc= BlocProvider.of<TopUserBloc>(context);
   topUserBloc.add(TopUserFetch(TopUserCount: 10));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUserBloc,TopUserState>(
      builder: (context, state) {
        var userlist=state as TopUserListState;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               const  BalanceCard(),
                  SizedBox(height: 10,),

                  const PerformanceChart(),

                  SizedBox(height: 10,),

                  TopUsersPeople(usersList: userlist.usersList),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text("RECENT  TRANSACTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                          const  Spacer(),

                          TextButton(
                            child:Container(
                              decoration:const  BoxDecoration(
                                  color: Color(0xffB4B9D1),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                                child: Text("MORE",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            onPressed: (){
                              context.go("/savedCards");
                            },

                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return   PeopleItem();
                          }),
                    ],
                  ),





                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("FINANCIAL GOALS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

                        SizedBox(height: 15,),


                        Text("XX of total XX",style: TextStyle(color: kcGrey4,fontSize: 16),),
                        Row(
                          children: [

                            Expanded(child: Container(height: 6,color: kcBlue5)),
                            Expanded(child: Container(height: 2 ,color: kcGrey5))
                          ],
                        ),

                        const  SizedBox(height: 15,),

                        Text("XX of total XX",style: TextStyle(color: kcGrey4,fontSize: 16),),
                        const  SizedBox(height: 15,),
                        Row(
                          children: [

                            Expanded(
                                flex: 3,
                                child: Container(height: 6,color: kcRed5)),
                            Expanded(
                                flex: 2,
                                child: Container(height: 2 ,color: kcGrey5))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Text("XX of total XX",style: TextStyle(color: kcGrey4,fontSize: 16),),
                        const  SizedBox(height: 15,),
                        Row(
                          children: [

                            Expanded(
                                flex: 4,
                                child: Container(height: 6,color: kcLightBlue5)),
                            Expanded(
                                flex: 2,
                                child: Container(height: 2 ,color: kcGrey5))
                          ],
                        ),
                      ]
                  )



                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
