import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../models/dashboard/top_course_models.dart';

class DashboardTopCourse extends StatelessWidget {
  const DashboardTopCourse({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCourseModel.list;

    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(list[index].title,
                          style: txtTheme.headline6,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Flexible(
                      child: Image(
                        image: AssetImage(list[index].image),
                        height: 110,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(shape: const CircleBorder()),
                      child: const Icon(Icons.play_arrow),
                    ),
                    const SizedBox(
                      width: tDashboardCardPadding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          list[index].heading,
                          style: txtTheme.headline4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          list[index].subHeading,
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


      ),
    );
  }
}
