import 'package:finance_app/models/contacts.dart';
import 'package:finance_app/mytextstyles.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/colors.dart' as color;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.Colors.accentColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/search.png",
              color: Colors.white,
              width: 30,
              height: 30,
            ),
          ),
          SizedBox(width: 15),
          Container(
            height: 40,
            width: 2,
            color: color.Colors.disableColor.withOpacity(0.3),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contacts().length,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(right: 10,left: 10),
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        contacts()[index].imageLink,
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Text(
                      contacts()[index].name,
                      style: MyTextStyles.bodyText2,
                    )
                  ],
                ),
              );
            }
            )
          )
        ],
      ),
    );
  }
}