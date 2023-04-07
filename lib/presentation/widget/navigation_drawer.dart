

import 'package:flutter/material.dart';
import 'package:testsell/core/theme/custom_typography.dart';
import 'package:testsell/core/util/constants.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  // void onItemPressed(BuildContext context, {required int index}) {
  //   Navigator.pop(context);
  //   switch (index) {
  //     case 0:
  //       Get.toNamed(RouteHelper.getCartHistoryPage());
  //       break;

  //     case 1:
  //       Get.toNamed(RouteHelper.getSignInPage());
  //       break;

  //     default:
  //       Navigator.pop(context);
  //   }
  // }

  void onItemPressed(){

  }

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      //color: AppColor.mainColor.withOpacity(0.1),
      width: 250,
      child: Drawer(
        //backgroundColor:AppColor.mainColor.withOpacity(0.1),
        child: Material(
          child: Padding(
            padding:const EdgeInsets.fromLTRB(Sizing.kSizingMultiple,
               Sizing.kSizingMultiple, Sizing.kSizingMultiple, 0),
            child: Column(
              children: [
                headerWidget(),
                const SizedBox(
                  height: Sizing.kSizingMultiple,
                ),
                const Divider(
                  thickness: 1,
                  height:Sizing.kSizingMultiple,
                ),
                DrawerItemes(
                    name: "Cart History",
                    icon: Icons.shopping_cart_outlined,
                    ontap: () => onItemPressed()),
                DrawerItemes(
                  name: "Logout",
                  icon: Icons.logout_outlined,
                  ontap: () =>onItemPressed()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    
      return 
       Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/david.jpg"),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      text: 'Akinfenwa',
                      style: TextStyle(
                          fontSize:Sizing.kSizingMultiple,
                          color: CustomTypography.kBlackColor),
                      children: [
                    TextSpan(
                      text: "David",
                      style: TextStyle(fontSize:Sizing.kSizingMultiple),
                    ),
                  ])),
              const SizedBox(
                height: Sizing.kSizingMultiple,
              ),
              Row(
                children:const [
                  Text('Ghana',style: TextStyle(),),
                   Icon(Icons.arrow_drop_down_rounded)
                ],
              )
            ],
          )
        ],
      );
  }
}
