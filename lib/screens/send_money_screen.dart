import 'package:flutter/material.dart';
import 'package:glade_two/constants/colors.dart';

import '../size_config.dart';
class SendMoneyScreen extends StatefulWidget {
  static const routeName = 'send-money';
  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  bool showAvailableBalance = true;

  @override
  void initState() {
    showAvailableBalance = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(103, 64, 126, 1)
              ),
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return Stack(
                    children: [
                      Image.asset(
                        'assets/images/sliverappbarbackground.png', height: 170,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [IconButton(icon: Icon(Icons.menu, color: Color.fromRGBO(255, 255, 255, 1),), onPressed: (){}),
                        IconButton(icon: Icon(Icons.notifications, color: Color.fromRGBO(254, 184, 22, 1),), onPressed: (){}),],),

                      Positioned(
                        top: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4.5),
                                height: 49.57,
                                width: 49.57,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(226, 231, 242, 0.27),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Container(
                                  height: 39,
                                  width: 39,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(226, 231, 242, 0.27),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(image: AssetImage('assets/images/user.png'), fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('Christopher', style: TextStyle(color: bgColor, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'DMSans'),),
                                      SizedBox(width: 5.0,),
                                      Text('Ntuk', style: TextStyle(color: Color.fromRGBO(254, 184, 22, 1), fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'DMSans')),

                                    ],
                                  ),
                                  Text('Welcome back @devchris', style: TextStyle(fontSize: 10, color: bgColor, fontFamily: "DMSRegular"),)
                                ],
                              ),

                            ],),
                        ),
                      ),

                      Positioned(
                        top: 155,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/usdacountbalance.png'), fit: BoxFit.cover)
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text(showAvailableBalance ?  'USD ACCOUNT' : 'Naira Account', style: TextStyle(fontSize: 10.0, color: Color.fromRGBO(255, 255, 255, 0.4), letterSpacing: 10),),
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(icon: Icon(Icons.arrow_back_ios, color: yellowColor,), onPressed: (){
                            setState(() {
                              showAvailableBalance = !showAvailableBalance;
                            });
                          }),
                        ],
                      ),
                      title: Text(showAvailableBalance ? '\$5,123' : 'N675,00.01', style: TextStyle(fontSize: showAvailableBalance ? 54 : 32, color: bgColor, letterSpacing: -2.7, fontFamily: "DMSRegular", ),),
                      subtitle: Text('Available Balance' , style: TextStyle(fontSize: 13, color: bgColor, letterSpacing: 0, fontFamily: "DMSRegular", )),
                      trailing: IconButton(icon: Icon(Icons.arrow_forward_ios, color: yellowColor,), onPressed: (){
                        setState(() {
                          showAvailableBalance = !showAvailableBalance;
                        });
                      }),
                    ),
                  ],
                ),
              )
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(103, 64, 126, 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RECENT ACTIVITY', style: TextStyle(fontSize: 14.0, fontFamily: "DMSRegular",  color: Color.fromRGBO(103, 64, 126, 0.8), letterSpacing: 0.17),),
                  Text('SEE MORE', style: TextStyle(fontSize: 10.0, fontFamily: "DMSans", fontWeight: FontWeight.bold, color: Color.fromRGBO(103, 64, 126, 0.89), letterSpacing: 0.12),),
                ],
              ),
            ),

            SizedBox(height: 10,),
            recentActivity(date: 'Tuesday, March 31st, 2020', naration: 'Transfer to Naira Account', amount: 'NGN124,000.44', amountColor: yellowColor),
            recentActivity(date: 'Wednesday, July 31st, 2020', naration: 'West Minchester Bank...', amount: 'EUR900.00', amountColor: Color.fromRGBO(103, 64, 126, 1)),
            recentActivity(date: 'Tuesday, August 31st, 2020', naration: 'Purchase on Ebay...', amount: 'EUR400.00', amountColor: yellowColor),
            recentActivity(date: 'Tuesday, November 31st, 2020', naration: 'Netflix Subscription', amount: 'USD5.44', amountColor: yellowColor),
            recentActivity(date: 'Wednesday, December 31st, 2020', naration: 'University of Calgary...', amount: 'NGN124,000.44', amountColor: Color.fromRGBO(103, 64, 126, 1)),
          ],
        ),
      )

      )

    );
  }

  Widget recentActivity({String date, String naration, String amount, Color amountColor}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: (){},
        minVerticalPadding: 20,
        title:
        Text(date, style: TextStyle(color: Color.fromRGBO(152, 126, 167, 1), fontSize: 10.0, letterSpacing: 0.11, fontFamily: 'raleway'),),
        subtitle: Text(naration, style: TextStyle(color: Color.fromRGBO(152, 126, 167, 1), fontSize: 12.0, letterSpacing: 0.14, fontFamily: "DMSRegular"),),

        trailing: Text(amount, style: TextStyle(color: amountColor, fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: 0.14, fontFamily: "raleway")),
      ),
    );
  }
}
