import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glade_two/constants/colors.dart';
class CryptoCurrency extends StatefulWidget {
  static const routeName = 'crypto-screen';
  @override
  _CryptoCurrencyState createState() => _CryptoCurrencyState();
}

class _CryptoCurrencyState extends State<CryptoCurrency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Crypto Currency', style: TextStyle(fontSize: 14.0, color: primaryColor, fontFamily: "DMSMedium"),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: primaryColor,), onPressed: (){Navigator.pop(context);}),
      ),

      body: SafeArea(child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){},
                    // splashColor: Color.fromRGBO(100, 225, 119, 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1.0, color: Color.fromRGBO(0, 194, 255, 1)),
                      ),
                      child: Text('WITHDRAW FUNDS', style: TextStyle(fontSize: 7, fontFamily: "DMSans", fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  // color: primaryColor,
                    image: DecorationImage(image: AssetImage('assets/images/crypto.png'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: ListTile(
                  leading:  Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(0, 194, 255, 1)
                      ),
                      child: SvgPicture.asset('assets/images/btc.svg', color: bgColor,)),

                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1.000322BTC', style: TextStyle(fontSize: 26.0, color: bgColor, fontWeight: FontWeight.bold),),
                      Text('BITCOIN WALLET BALANCE' , style: TextStyle(fontSize: 7.0, color: bgColor, fontFamily: 'DMSMedium')),
                    ],
                  ),

                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BTC/USD',style: TextStyle(fontSize: 7, color: bgColor),),
                      Text('\$39,44,18', style: TextStyle(fontSize: 10, color: bgColor))
                    ],
                  ),
                )
              ),
            ),


            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  activities(activity: 'Send', icon: 'assets/images/send.png', color: Color.fromRGBO(255, 161, 129, 1) , containerColor:  Color.fromRGBO(255, 234, 233, 1), height: 19.84, width: 19.84),
                  activities(activity: 'Receive', icon: 'assets/images/receive.png',color:  Color.fromRGBO(0, 194, 255, 1), containerColor:  Color.fromRGBO(240, 250, 255, 1), height: 21.05, width: 21.05),
                  activities(activity: 'Buy/Sell', icon: 'assets/images/buysell.png', color: Color.fromRGBO(122, 129, 229, 1), containerColor: Color.fromRGBO(237, 228, 255, 1), height: 19.84, width: 19.84),
                  activities(activity: 'Found', icon: 'assets/images/plus.png',  color: Color.fromRGBO(100, 225, 119, 1), containerColor: Color.fromRGBO(227, 255, 239, 1), height: 22.0, width: 22.0),
                ],
              ),
            ),

            SizedBox(height: 30.0,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(240, 250, 255, 1,),
              child: Text('RECENT ACTIVITY', style: TextStyle(fontSize: 10.0, fontFamily: "DMSans", fontWeight: FontWeight.bold, color: Color.fromRGBO(35, 57, 114, 1)),),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            Image.asset('assets/images/accountstatement.png'),
            SizedBox(height: 5.0,),
            Text('No Transaction yet.', style: TextStyle(fontSize: 15.0, color: primaryColor, fontFamily: "DMSMedium"),),
            Text('Initiate transaction to view record', style: TextStyle(fontSize: 12.0, color: primaryColor, fontFamily: "DMSRegular"))
          ],
        ),
      ),),
    );
  }

  Widget activities({String activity, String icon, Color color, Color containerColor, double height, double width}){
    return Column(
      children: [
        Container(
            height: 48,
            width: 45,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(9),

            ),
            alignment: Alignment.center,
            child: Image.asset(icon, height: height, width: width,)
          // SvgPicture.asset('assets/images/send.svg', height: 10, width: 10, color: Color.fromRGBO(255, 161, 129, 1),),
        ),

        Text(activity, style: TextStyle(fontSize: 10, fontFamily: 'DMSRegular'),)
      ],
    );
  }
}
