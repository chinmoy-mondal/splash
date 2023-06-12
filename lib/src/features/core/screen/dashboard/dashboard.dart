import 'package:flutter/material.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/sizes.dart';
import 'package:splash/src/constants/text_strings.dart';

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
              Text(
                tDashboardTitle,
                style: txtTheme.bodyText1,
              ),
              Text(
                tDashboardHeading,
                style: txtTheme.headline5,
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),

              // Search Box
              Container(
                decoration: const BoxDecoration(
                    border: Border(left: BorderSide(width: 4))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tDashboardSearch,
                      style: txtTheme.headline4
                          ?.apply(color: Colors.grey.withOpacity(.5)),
                    ),
                    const Icon(Icons.mic, size: 25)
                  ],
                ),
              ),
              const SizedBox(height: tDashboardPadding),

              // Categories
              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tDarkColor,
                            ),
                            child: Center(
                              child: Text(
                                "JS",
                                style: txtTheme.headline6
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Java Script",
                                  style: txtTheme.headline6,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 lessons",
                                  style: txtTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tDarkColor,
                            ),
                            child: Center(
                              child: Text(
                                "JS",
                                style: txtTheme.headline6
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Java Script",
                                  style: txtTheme.headline6,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 lessons",
                                  style: txtTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tDarkColor,
                            ),
                            child: Center(
                              child: Text(
                                "JS",
                                style: txtTheme.headline6
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Java Script",
                                  style: txtTheme.headline6,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "10 lessons",
                                  style: txtTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Flutter Crash Course",
                                    style: txtTheme.headline6,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Flexible(
                                  child: Image(
                                    image: AssetImage(tTopCourseImage1),
                                    height: 110,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder()),
                                  child: const Icon(Icons.play_arrow),
                                ),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "3 section",
                                      style: txtTheme.headline4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Programming Languages",
                                      style: txtTheme.bodyText2,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Flutter Crash Course",
                                    style: txtTheme.headline6,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Flexible(
                                  child: Image(
                                    image: AssetImage(tTopCourseImage1),
                                    height: 110,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder()),
                                  child: const Icon(Icons.play_arrow),
                                ),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "3 section",
                                      style: txtTheme.headline4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Programming Languages",
                                      style: txtTheme.bodyText2,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Flutter Crash Course",
                                    style: txtTheme.headline6,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Flexible(
                                  child: Image(
                                    image: AssetImage(tTopCourseImage1),
                                    height: 110,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder()),
                                  child: const Icon(Icons.play_arrow),
                                ),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "3 section",
                                      style: txtTheme.headline4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Programming Languages",
                                      style: txtTheme.bodyText2,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
