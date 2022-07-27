import 'package:flutter/material.dart';
import 'package:nghe/values/app_assets.dart';
import 'package:nghe/values/app_colors.dart';
import 'package:nghe/values/app_styles.dart';

import 'home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to',
                  style: AppStyles.h3,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Nghệ',
                      style: AppStyles.h1.copyWith(
                        color: AppColors.blackGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        'Quotes"',
                        textAlign: TextAlign.right,
                        style: AppStyles.h4.copyWith(
                          height: 1.0
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 72),
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
                  },
                  child: Image.asset(AppAssets.rightArrow),
                  shape: CircleBorder(),
                  fillColor: AppColors.lightBlue,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}