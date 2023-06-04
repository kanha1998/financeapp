

import 'package:flutter/material.dart';

import '../../../color_constant.dart';
class PeopleItem extends StatelessWidget {
  const PeopleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(

      leading: Image.asset("assets/images/peopleicon.png"),
      title: const Text("John Doe"),
      subtitle:const  Text("United Kingdom"),
      trailing: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("80,000 AED"),
                Text("11 Aug 2021",style: TextStyle(color: Colors.grey,fontSize: 13)),
              ],
            ),

            SizedBox(width: 10,),
            Icon(Icons.check_circle,color: kcGreen,size: 16,)

          ]),


    );
  }
}
