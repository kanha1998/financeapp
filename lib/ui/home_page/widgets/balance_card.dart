


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../color_constant.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: const Color(0xff171D3C),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      "Hola, Michael",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Cabin'),
                    ),
                    Text(
                      "Te tenemos excelentes noticias para ti",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SvgPicture.asset(
                    "assets/images/bell.svg",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    "assets/images/userIcon.png",
                    width: 18,
                    height: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "\$56,271.68",
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "+\$9,736",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_upward, color: kcGreen),
                Text("2.3%",
                    style: TextStyle(color: kcGreen, fontSize: 15))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "ACCOUNT BALANCE",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        "12",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  const  VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Column(
                    children:  [
                      Text(
                        "36",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Transactions",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Column(
                    children:  [
                      Text(
                        "4",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Bills",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
