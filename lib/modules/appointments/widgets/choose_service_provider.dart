import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vh_jobs/modules/appointments/model/appointment.dart';
import 'package:vh_jobs/modules/appointments/widgets/appointment_item.dart';
import 'package:vh_jobs/shared/utils/asset_images.dart';
import 'package:vh_jobs/shared/utils/colors.dart';
import 'package:vh_jobs/shared/utils/custom_styles.dart';
import 'package:vh_jobs/shared/widgets/appbars/vhjob_appbar.dart';
import 'package:vh_jobs/shared/widgets/cache_image.dart';
import 'package:vh_jobs/shared/widgets/forms/input_text.dart';

class ChooseServiceProviderScreen extends StatelessWidget {
  const ChooseServiceProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VhjobsAppBar(
        elevation: 0,
        gradientAppBar: true,
        leadingIcon: const SizedBox(),
        centerTitle: true,
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 19.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: InputText(
                    labelText: 'Search',
                    prefixIcon: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SvgPicture.asset(AssetResources.search),
                      ),
                    ),
                    onTap: () {},
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (val) {},
                  ),
                ),
                SizedBox(width: 19.w),
                Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.color1,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: SvgPicture.asset(AssetResources.filter),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Choose Service Provider',
              style: AppStyles.headline3ExtraBold,
            ),
          ),
          SizedBox(height: 23.h),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) => _ServiceProviderItem(
                isAvailable: index % 2 == 0,
                anyone: index == 0,
              ),
              separatorBuilder: (_, index) => divider(),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget divider() => const Divider(
        thickness: 1,
        height: 0,
        color: AppColors.color5,
      );
}

class _ServiceProviderItem extends StatelessWidget {
  final bool anyone;
  final bool isAvailable;
  const _ServiceProviderItem(
      {Key? key, required this.anyone, required this.isAvailable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Ana Idowu';
    String status = 'Available';
    Color textColor = AppColors.variant3;

    if (!isAvailable) {
      status = 'Available on Thr 8';
      textColor = AppColors.error;
    }
    if (anyone) {
      name = 'Anyone';
      status = 'Highest availability';
    }
    return Opacity(
      opacity: isAvailable ? 1 : 0.4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Row(
          children: [
            VhCacheImage(
              imgUrl: anyone
                  ? AssetResources.anyone
                  : 'https://s3-alpha-sig.figma.com/img/d42e/f5ee/66e3d40d0cf500cb583cec2ad653ca82?Expires=1654473600&Signature=K7fpnlIZ39TuvPY6QP8WJEd8rTE33jvUZQBNQ9BffLXCRZDv09QQAXP1tfHQK1Ee5TgtAkjdWN6HaHKe3TzRl9TQolCjoLHuEUoOXi-GahCJJYQLzNNqIjDxTHfdDZqbhhl6QxpUjJwjHu0XrgKGf8WMosvwhstKJB277ht0kUBlQcpJGoQa0g6cC0UQp5oAwt1tydwxfH6V4QgCyPgKhugVbvD8KFWIJLadFy8uLSgHNaxtTRyj0vnWVW8E8oXmGUE7ZtjhSsEK08pjN77SxgItOMT62mUbh9ZhJjzxMM4HEjyGoqikJx2auPvmrji3saBtZfeLhAIK-FXk1mJ9iA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
              width: 48.w,
              height: 48.w,
              borderRadius: 100.r,
            ),
            SizedBox(width: 8.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name, style: AppStyles.bodySmall),
                Text(status,
                    style: AppStyles.caption.copyWith(color: textColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
