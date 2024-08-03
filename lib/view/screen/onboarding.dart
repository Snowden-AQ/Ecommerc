import 'package:ecommers/core/constant/appcolor.dart';
import 'package:ecommers/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      height: 250,
                      child: Image.asset(onBoardingList[index].image),
                    ),
                    Text(
                      onBoardingList[index].title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25, left: 25),
                      child: Text(
                        onBoardingList[index].subTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.5,
                          color: MyAppcolor.grye,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onBoardingList.length,
                            (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          margin: const EdgeInsets.only(right: 5),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: MyAppcolor.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
