import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glade_two/constants/colors.dart';
import 'package:glade_two/screens/crypto_currency.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,

        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Container(height: 40, width: 40, decoration: BoxDecoration(color: lightGreen,
          borderRadius: BorderRadius.circular(50),
          ),
            child: Card(
              color: deepGreen,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SA', style: TextStyle(fontSize: 14, color: bgColor, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ),

        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Skadgate Innovations', style: TextStyle(color: primaryColor, fontSize: 15.0, fontWeight: FontWeight.bold),),
              Text('99201122334', style: TextStyle(color: primaryColor, fontSize: 11),)
            ],
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0),
            child: IconButton(icon: Icon(Icons.notifications_none, color: primaryColor,), onPressed: (){}),
          )
        ],

      ),
      
      body: SafeArea(child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          children: [
            
            InkWell(
              onTap: (){},
              splashColor: bgColor,
              child: Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 2,
                    child: Image.asset('assets/images/nairabalance.png'),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        Text('Available Balance', style: TextStyle(fontSize: 13.0, fontFamily: "DMSRegular", color: primaryColor),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('₦' ,style: TextStyle(fontFamily: "Arial Rounded MT Bold", fontSize: 26)),
                            Text('675,000.01', style: TextStyle(fontFamily: "DMSans", fontSize: 26, fontWeight: FontWeight.bold),),
                          ],
                        )
                      ],
                    ),
                  ),
                  

                ],
              ),
            ),
            
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Add a Business Account', style: TextStyle(color: Color.fromRGBO(13, 62, 83, 1), fontSize: 12.0, fontWeight: FontWeight.bold, fontFamily: "DMSans", ),),
              IconButton(icon: Icon(Icons.add_circle_outline, color: Color.fromRGBO(0, 194, 255, 1),), onPressed: (){})
            ],),

            Row(
              children: [
                menuItem(title: 'Fund',backgroundColor: Color.fromRGBO(255, 234, 233, 1), subTitle: 'transfer', imageUrl: 'assets/images/fundtransfer.png', description: "Send Funds to any", description2: 'Bank Account', onTap: (){}),
                SizedBox(width: 10,),
                menuItem(title: 'Digital', onTap: (){}, backgroundColor: Color.fromRGBO(240, 250, 255, 1), subTitle: 'Invoicing', description: 'Send Funds to any', description2: 'Bank Account', imageUrl: 'assets/images/accountstatement.png')
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                menuItem(title: 'Crypto', onTap: (){
                  Navigator.pushNamed(context, CryptoCurrency.routeName);
                }, subTitle: 'currency', description2: 'Send Funds to any', imageUrl: 'assets/images/btclogo.png', backgroundColor: Color.fromRGBO(237, 228, 255, 1) , description: 'Bank Account'),
                SizedBox(width: 10,),
                menuItem(title: 'Account', onTap: (){} ,description: 'Send Funds to any', description2: 'Bank Account', subTitle: 'statement', imageUrl: 'assets/images/accountstatement.png', backgroundColor: Color.fromRGBO(227, 255, 239, 1))
              ],
            )
          ],
        ),
      )),
    );
  }

  Widget menuItem({String title, subTitle, description, imageUrl, Color backgroundColor, description2, Function onTap}){
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: backgroundColor,
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imageUrl, height: 47, width: 47,),
                SizedBox(height: 10,),
                Text(title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                Text(subTitle, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),

                Text(description, style: TextStyle(fontSize: 11),),
                Text(description2 , style: TextStyle(fontSize: 11))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
