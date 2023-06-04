
import 'package:financeapp/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/carousel_indicator/carousel_indicator.dart';
import '../home_page/widgets/people_item.dart';



final List<String> imgList = [
  "assets/images/visaCard.png",
  "assets/images/visaCardgreen.png"];

final CarouselController controller = CarouselController();
class SavedCards extends StatefulWidget {
  const SavedCards({Key? key}) : super(key: key);

  @override
  State<SavedCards> createState() => _SavedCardsState();
}

class _SavedCardsState extends State<SavedCards> {
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(

        body: Column(
          children: [

            Row(

              children: [
                InkWell(
                  onTap: (){
                    context.go("/");
                  },
                    child: const Icon(Icons.arrow_back)),
                SizedBox(width: 6,),
                Text("My saved cards",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
            CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (val, _) {
                    setState(() {
                      controller.jumpToPage(val);
                      pageIndex=val;
                    });
                  }

              ),
              items: imgList.map((e) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e)
                    )
                ),
              )).toList(),


            ),

            CarouselIndicator(
              color: Colors.black,
              count: imgList.length,
              index: pageIndex,
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                //   borderRadius:  BorderRadius.circular(25.0)
              ) ,

              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              tabs: const  [
                Tab(text: 'Menu title 1',),
                Tab(text: 'Menu title 2',),
                Tab(text: 'Menu title 3',),

              ],
            ),


            Expanded(
              child: TabBarView(children: [


                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("RECENT  TRANSACTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return   PeopleItem();
                          }),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("RECENT  TRANSACTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return   PeopleItem();
                          }),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: const Text("RECENT  TRANSACTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return   PeopleItem();
                          }),
                    ],
                  ),
                ),
              ]),
            )



          ],
        ),
      ),
    );
  }
}
