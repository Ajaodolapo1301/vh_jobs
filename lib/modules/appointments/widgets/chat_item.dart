import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';

class ChatItemWidget extends StatelessWidget {
  final bool isSender;
  const ChatItemWidget({Key? key, required this.isSender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      color: isSender ? AppColors.color6 : Colors.transparent,
      child: Row(
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
                Row(
                  children: [
                    Text(
                      isSender ? 'You' : 'Obi O',
                      style: AppStyles.bodySmallBold,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      '02:30 PM',
                      style: AppStyles.caption,
                    ),
                  ],
                ),
                SizedBox(height: 9.h),
                Text(
                  'Lorem ipsum dolor sit amet, conctetur aing elit.',
                  maxLines: 2,
                  style: AppStyles.bodySmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
