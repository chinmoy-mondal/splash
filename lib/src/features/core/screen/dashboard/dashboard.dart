import 'package:flutter/material.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/sizes.dart';
import 'package:splash/src/constants/text_strings.dart';
import 'package:splash/src/features/core/screen/dashboard/widgets/appbar.dart';
import 'package:splash/src/features/core/screen/dashboard/widgets/categories.dart';
import 'package:splash/src/features/core/screen/dashboard/widgets/course.dart';
import 'package:splash/src/features/core/screen/dashboard/widgets/search.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // heading
              Text(tDashboardTitle, style: txtTheme.bodyText1),
              Text(tDashboardHeading, style: txtTheme.headline5),
              const SizedBox(height: tDashboardPadding),

              // Search Box
              DashboardSearch(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              // Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              //  banners
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tCardBgColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Flexible(
                                  child:
                                      Image(image: AssetImage(tBookmarkIcon))),
                              Flexible(
                                  child:
                                      Image(image: AssetImage(tBannerImage1))),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            tDashboardBannerTitle1,
                            style: txtTheme.headline6,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            tDashboardBannerSubTitle,
                            style: txtTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: tDashboardPadding),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Image(
                                        image: AssetImage(tBookmarkIcon))),
                                Flexible(
                                    child: Image(
                                        image: AssetImage(tBannerImage2))),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              tDashboardBannerTitle2,
                              style: txtTheme.headline6,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              tDashboardBannerSubTitle,
                              style: txtTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(tDashboardButton),
                        ),
                      )
                    ],
                  ))
                ],
              ),
              const SizedBox(height: tDashboardPadding),

              //  Top Course
              Text(
                tDashboardTopCourses,
                style: txtTheme.headline4?.apply(fontSizeFactor: 1.2),
              ),
              DashboardTopCourse(txtTheme: txtTheme)
            ],
          ),
        ),
      ),
    );
  }
}






