import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/pages/payment_page.dart';
import 'package:flutter_payment_app/widget/botton.dart';
import 'package:flutter_payment_app/widget/large_buttons.dart';
import 'package:flutter_payment_app/widget/text_file.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),

          ],
        ),
      ),
    );
  }
  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }
  _mainBackground() {
    return Positioned(
      bottom: 10,
        left: 0,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"),
              fit: BoxFit.fitHeight
            )
          ),
        )
    );
  }
  _curveImageContainer() {
    return Positioned(
      left: 0,
        right: -2,
        bottom: 10,
        child:
        Container(
          height: MediaQuery.of(context).size.height*0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/curve.png"),
                  fit: BoxFit.cover
              )
          ),
        )
    );
  }
  _buttonContainer() {
    return Positioned(
      bottom: 15,
        right: 58,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context, builder:(BuildContext bc){
              return Container(
                height: MediaQuery.of(context).size.height-240,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: Container(
                      color: Color(0xFFeef1f4).withOpacity(0.7),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height-300,
                    )),
                    Positioned(
                        right: 58,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.only(top: 5,bottom: 25),
                      width: 60,
                      height: 250,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius:BorderRadius.circular(29)
                      ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              appButton(icon: Icons.cancel,
                                iconColor: AppColor.mainColor,
                                backgroundColor: Colors.white,
                                onTap: (){Navigator.pop(context);},
                              ),
                              appButton(icon: Icons.menu,
                                iconColor: AppColor.mainColor,
                                backgroundColor: Colors.white,
                                text: 'Add Bill',
                                onTap: (){},
                              ),
                              appButton(icon: Icons.history,
                                iconColor: AppColor.mainColor,
                                backgroundColor: Colors.white,
                                text: 'History',
                                onTap: (){},
                              )
                            ],
                          ),
                    ))
                  ],
                ),
              );
            });
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0, 1),
                  color: Color(0xFF11324d).withOpacity(0.2)
                )
              ],
              image: DecorationImage(
                  image: AssetImage("images/lines.png"),
              )
            ),
          ),
        ),
    );
  }
  _listBills(){
    return Positioned(
      top: 320,
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_,index) {
              return Container(
                margin: const EdgeInsets.only(top: 20,right: 20),
                height: 130,
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius: 20,
                        spreadRadius: 10,
                      ),]
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 10,left: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 3,
                                        color: Colors.red
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage("images/brand1.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('KenGen Power',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.mainColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('ID:1900513',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.idColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                          SizedText(text: 'Auto pay on 24th May 18', color: AppColor.green),
                          SizedBox(height: 5,)
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColor.selectBackground
                                ),
                                child: Center(
                                  child: Text('Select',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColor.selectColor
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Text("\$1248.00",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: AppColor.mainColor
                                ),
                              ),
                              Text("Due in 3 days",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.idColor
                                ),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 5,
                            height: 35,
                            decoration: BoxDecoration(
                                color: AppColor.halfOval,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30))
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),);
  }
  _payButton() {
    return Positioned(
      bottom: 20,
        child: AppLargeButton(text: "Pay all Bills",textColor: Colors.white,onTap: (){Get.to(()=>PaymentPage());},));
  }
  _textContainer(){
    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 100,
            child: Text(
              'My Bills',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF293952)
              ),
            )),
        Positioned(
            left: 40,
            top: 80,
            child: Text(
              'My Bills',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ))
      ],
    );
  }
}
