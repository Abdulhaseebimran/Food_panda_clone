import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_app/components/restuarent.dart';

import '../constants/colors.dart';
import '../constants/constant.dart';
import '../models/Exclusvie_Panda_Models/exclusive_Helper.dart';
import '../models/Exclusvie_Panda_Models/exclusive_items_models.dart';
import '../models/Panda_pick_model/panda_pick_helper.dart';
import '../models/Panda_pick_model/panda_pick_items_models.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {

  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'Search for restaurant,cuisones, and dishes');
  }
  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height * 1 ;
    final width  = MediaQuery.of(context).size.width * 1 ;
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Food Delivery'),
        actions: const[
          Icon(Icons.shopping_bag_outlined),
          SizedBox(width: 10,)
        ],
        bottom: PreferredSize(
          preferredSize:const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
            child: Row(
              children:  [
                Expanded(
                  child: CupertinoTextField(
                    controller: _textController,
                  padding: const EdgeInsets.symmetric(vertical: 12 , horizontal: 10),
                  placeholder: "asdf",
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.search , color: Color(0xff7b7b7b) ,),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xfff7f7f7),
                    borderRadius : BorderRadius.circular(50)
                  ),
                  style: const TextStyle(color: Color(0xff707070) ,
                      fontSize: 12, fontFamily: Regular) ,
                )),
              const SizedBox(width: 10,),
              const  Icon(Icons.filter_list_outlined, color: MyColors.primaryColor,)
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Container(
            // height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const Text('Panda Pick' , style: TextStyle(
            color: Color(0xff323232) , fontSize: 15, fontFamily: Bold),),
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
               child: Container(
                height: MediaQuery.of(context).size.height * .300,
                 child: ListView.builder(
                          itemCount: PandaPickHelper.itemCount,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            PandaPickItemModel model = PandaPickHelper.getStatusItem(index);
                            return RestaurentScreens(
                              name: model.name,
                              image:model.image ,
                              remainingTime: model.remaingTime,
                              totalRating: model.totalRating,
                              subTitle: model.subTitle,
                              rating: model.ratting,
                              deliveryTime: model.remaingTime, deliveryPrice: model.deliveryPrice,
                            );
                          }),
                    ),
                  ),
            const Text('Panda exclusives' , style: TextStyle(
            color: Color(0xff323232) , fontSize: 15, fontFamily: Bold),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .300,
                    child: ListView.builder(
                        itemCount: ExclusiveHelper.itemCount,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          ExclusiveItemModel model = ExclusiveHelper.getStatusItem(index);
                          return RestaurentScreens(
                            name: model.name,
                            image:model.image ,
                            remainingTime: model.remaingTime,
                            totalRating: model.totalRating,
                            subTitle: model.subTitle,
                            rating: model.rating,
                            deliveryTime: model.remaingTime, deliveryPrice: model.deliveryPrice,
                          );
                        }),
                  ),
                ),
              const Text('All Restuarent' , style: TextStyle(
              color: Color(0xff323232) , fontSize: 15, fontFamily: Bold),),
              Container(
                  height: MediaQuery.of(context).size.height * .350,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                      itemCount: ExclusiveHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        ExclusiveItemModel model = ExclusiveHelper.getStatusItem(index);
                        return RestaurentScreens(
                          name: model.name,
                          image:model.image ,
                          remainingTime: model.remaingTime,
                          totalRating: model.totalRating,
                          subTitle: model.subTitle,
                          rating: model.rating,
                          deliveryTime: model.remaingTime, deliveryPrice: model.deliveryPrice,
                        );
                      }),
                ),
              const SizedBox(height: 30,),
            ]),
            ),
          ),
      ),
    );
  }
}