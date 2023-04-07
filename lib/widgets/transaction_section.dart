import 'package:finance_app/models/transactions.dart';
import 'package:finance_app/mytextstyles.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transactions",
                style: MyTextStyles.headline3,
              ),
              Text(
                "See All",
                style: MyTextStyles.subtitle2,
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 300,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
              itemCount: transaction().length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: transaction()[index].color.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          transaction()[index].iconData,
                          color: transaction()[index].color,
                          size: 17,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction()[index].title,
                            style: MyTextStyles.bodyText1,
                            ),
                            Text(
                              transaction()[index].title,
                            style: MyTextStyles.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Text(transaction()[index].amount,
                            style: MyTextStyles.bodyText2,
                            )
                    ],
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}