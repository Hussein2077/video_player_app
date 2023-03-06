import 'package:flutter/material.dart';
import 'package:training/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.homePageBackground,
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: AppColor.homePageTitle,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Your Program',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: AppColor.homePageSubtitle,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: AppColor.homePageDetail,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColor.gradientFirst,
                    AppColor.gradientSecond,
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.gradientSecond,
                        blurRadius: 20,
                        offset: Offset(5, 10))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 20, bottom: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Workout',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: AppColor.homePageContainerTextSmall,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Legs Toning\nand Glutes Workout',
                      style: TextStyle(
                        height: 1.6,
                        decoration: TextDecoration.none,
                        color: AppColor.homePageContainerTextBig,
                        fontSize: 24,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 20,
                          color: AppColor.homePageContainerTextSmall,
                        ),
                        Text(
                          ' 60 min',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 18,
                            color: AppColor.homePageContainerTextSmall,
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(4, 8),
                                  color: AppColor.gradientFirst,
                                  blurRadius: 10,
                                )
                              ]),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: AppColor.homePageContainerTextSmall,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
