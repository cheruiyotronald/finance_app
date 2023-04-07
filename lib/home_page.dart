import 'package:finance_app/widgets/action_section.dart';
import 'package:finance_app/widgets/contact_section.dart';
import 'package:finance_app/widgets/top_section.dart';
import 'package:finance_app/widgets/transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/colors.dart' as color;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Colors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: color.Colors.accentColor,
        unselectedItemColor: color.Colors.disableColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: "Report"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Stock"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards"
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
              ContactSection(),
              SizedBox(height: 20),
              ActionSection(),
              SizedBox(height: 20),
              TransactionSection(),
            ],
          ),
        ),
      ),
    );
  }
}