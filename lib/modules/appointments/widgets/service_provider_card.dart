import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';

class ServiceProviderCard extends StatelessWidget {
  const ServiceProviderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265.w,
      height: 110.h,
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.color7,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VhCacheImage(
            width: 40.w,
            height: 40.w,
            borderRadius: 100.r,
            imgUrl:
                'https://s3-alpha-sig.figma.com/img/384f/8a0c/0dce0716d04bd51e2fc5f5eaa19efc76?Expires=1654473600&Signature=RXqohXqS5bPVv6KEEyqQ8FWBXf8pp~2UebWrI-7OSLonaH~jhtxFC5ZhM15IxYH~FvbUwXHs4536rvkvp6UepVjeke~cse2Xjmxedac7GKjguDGerOxcvc~jxjOqvb3V1SRzuxFeCJXLPslA0cTVBFtPcx~~6OIb9DJQxbLADb-bBwzjQewr9fokS8uFjV7rzPGb1e8EvbU6Q~iUqOlLSZA2DCSRMW-MRLoVdFGV7ZoI4VtXsmZOs7JmGdMKjfGhBl59KVMLHyUA0MOGlYVNSqejcVknnqmGRI74U7Fdrdez3hdUJuebEa93LMS60z-T4Sq9efdY12UZm3Uj3IWdxg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lara Juliet', style: AppStyles.bodyLargeBold),
                SizedBox(height: 4.h),
                Text('ID Card No: 4635734', style: AppStyles.caption),
                SizedBox(height: 4.h),
                Text('Contact: 081454252323', style: AppStyles.caption),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFC806),
                    ),
                    Text(' 4.9/5(25)', style: AppStyles.caption),
                    const Expanded(child: SizedBox.shrink()),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: AppColors.color6,
                        borderRadius: BorderRadius.circular(30.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
                            spreadRadius: 5,
                            offset: const Offset(0, 6),
                            color: Colors.black.withOpacity(.12),
                          )
                        ],
                      ),
                      child: Text(
                        'Change',
                        style: AppStyles.caption,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
