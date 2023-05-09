import 'package:flutter/material.dart';
import 'package:flutter_payment_app/pages/my_home_page.dart';
import 'package:flutter_payment_app/widget/botton.dart';
import 'package:flutter_payment_app/widget/large_buttons.dart';
import 'package:get/get.dart';
import '../component/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold (
      body: Container(
        padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/paymentbackground.png"),
                fit: BoxFit.fill
            )
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h*0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/success.png"),
                      fit: BoxFit.fitWidth
                  )
              ),
            ),
            Text('Success!',
              style: TextStyle(
                fontSize: 30,
                color: AppColor.mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5,),
            Text('Payment is completed for 2 bills',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.idColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: h*0.045,),
            Container(
              height:160,
              width:350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:Border.all(
                  width: 2,
                  color: AppColor.idColor.withOpacity(0.5)
                )
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index){
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15,left: 20,bottom: 10),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green,
                                ),
                                child: Icon(Icons.done,size: 30,color: Colors.white,),
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
                                  SizedBox(height: 10,),
                                  Text('ID:1900513',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.idColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 20,),
                              Column(
                                children: [
                                  Text("",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("\$1248.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.mainColor
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                          Divider(thickness: 2,color: AppColor.idColor.withOpacity(0.5),)

                        ],
                      ),
                    );
                  },
                ),
              ),
              ),
            SizedBox(height: h*0.05,),
            Column(
              children: [
                Text("Total Amount",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.idColor.withOpacity(0.5)
                  ),
                ),
                SizedBox(height: 10,),
                Text("\$2840.00",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColor.mainColor
                  ),
                )
              ],
            ),
            SizedBox(height: h*0.14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appButton(icon: Icons.share_sharp,
                  text: 'share',
                  textColor: AppColor.mainColor,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,),
                SizedBox(width: 80),
                appButton(icon: Icons.print_outlined,
                  text: 'print',
                  textColor: AppColor.mainColor,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,)
              ],
            ),
            SizedBox(height: h*0.05,),
            AppLargeButton(text: 'Done',textColor: AppColor.mainColor,backgroundColor: Colors.white,isBorder: true,onTap: (){Get.back();},)
          ],
        ),
      ),
    );
  }
}

