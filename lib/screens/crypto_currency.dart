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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
        child: Column(
          children: [
            Row(
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

            SizedBox(height: 15,),

            Container(
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


            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                activities('Send', FontAwesomeIcons.paperPlane, Color.fromRGBO(255, 161, 129, 1) , Color.fromRGBO(255, 234, 233, 1)),
                activities('Receive', FontAwesomeIcons.download,  Color.fromRGBO(0, 194, 255, 1), Color.fromRGBO(240, 250, 255, 1)),
                activities('Buy/Sell', Icons.check_box_outline_blank,  Color.fromRGBO(122, 129, 229, 1), Color.fromRGBO(237, 228, 255, 1)),
                activities('Found', Icons.add_circle_outline,  Color.fromRGBO(100, 225, 119, 1), Color.fromRGBO(227, 255, 239, 1)),
              ],
            )



          ],
        ),
      ),),
    );
  }

  Widget activities(String activity, IconData icon, Color color, Color containerColor){
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
            child: Icon(icon, color: color,)
          // SvgPicture.asset('assets/images/send.svg', height: 10, width: 10, color: Color.fromRGBO(255, 161, 129, 1),),
        ),

        Text(activity, style: TextStyle(fontSize: 10, fontFamily: 'DMSRegular'),)
      ],
    );
  }
}
