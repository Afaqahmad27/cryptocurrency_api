import 'package:flutter/material.dart';

Widget BoxContainer({String? image, String? titleText, String? subTitle, num? valueText, num? valueText2, num? valueText3}){
  return Container(
    width: double.infinity,
    height: 110,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(14),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade600,
            offset: Offset(2, 2),
            blurRadius: 10,
            spreadRadius: -4),
        BoxShadow(
            color: Colors.grey.shade600,
            offset: Offset(-2, -2),
            blurRadius: 10,
            spreadRadius: -4),
      ],
    ),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(2, 2),
                    blurRadius: 5,
                    spreadRadius: -2),
                BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(-2, -2),
                    blurRadius: 5,
                    spreadRadius: -2),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Image.network('$image',),
          ),
          Container(width: 40, child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$titleText',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 2,),
              Text('$subTitle',style: TextStyle(fontSize: 18)),
            ],
          )),
          Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  valueText.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 3,),
                Text(
                  valueText2.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      color: valueText2!.toDouble() < 0 ?Colors.red: Colors.green,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 3,),
                Text(
                  valueText3.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      color: valueText3!.toDouble() < 0 ?Colors.red: Colors.green,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}