import 'package:finance_app/mytextstyles.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/colors.dart' as color;

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionItem(title: "Add Money", icon: Icons.add, color: color.Colors.accentColor),
          ActionItem(title: "Send Money", icon: Icons.credit_card_outlined, color: color.Colors.orangeColor),
          ActionItem(title: "More", icon: Icons.dashboard_outlined, color: color.Colors.disableColor),
        ],
      ),
    );
  }
}

class ActionItem extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color color;

  ActionItem({
    required this.title,
    required this.icon,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            icon, color: color,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title, style: MyTextStyles.bodyText2,
        )
      ],
    );
  }
}