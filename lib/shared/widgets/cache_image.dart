import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType { svg, png }

class VhCacheImage extends StatelessWidget {
  final String imgUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final double borderRadius;
  final bool showPlaceholder;
  final Widget? errorWidget;
  final int? memCacheHeight;
  final int? memCacheWidth;

  const VhCacheImage(
      {Key? key,
      this.height,
      this.width,
      required this.imgUrl,
      this.borderRadius = 0,
      this.boxFit = BoxFit.cover,
      this.showPlaceholder = false,
      this.errorWidget,
      this.memCacheHeight = 400,
      this.memCacheWidth = 400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: getImageType(imgUrl) == ImageType.svg
          ? svgImageViewer()
          : getImageType(imgUrl) == ImageType.png
              ? !imgUrl.contains('.com')
                  ? Image.asset(
                      imgUrl,
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                    )
                  : CachedNetworkImage(
                      imageUrl: imgUrl,
                      // placeholder: (context, url) => showPlaceholder
                      //     ? shimmerContainer()
                      //     : Container(
                      //         height: height,
                      //         width: width,
                      //         constraints: BoxConstraints(
                      //           maxHeight: height / 2,
                      //           maxWidth: width / 2,
                      //         ),
                      //         child: Lottie.asset('assets/json/jeetar_loader.json')),
                      // errorWidget: (context, url, error) => Container(
                      //   height: 20.h,
                      //   width: 20.w,
                      //   child: errorWidget ??
                      //       SvgPicture.asset(AssetResources.BROKEN_ICON,
                      //           fit: this.boxFit),
                      // ),
                      height: height,
                      width: width,
                      fit: boxFit,
                      memCacheHeight: memCacheHeight,
                      memCacheWidth: memCacheWidth,
                    )
              : const SizedBox.shrink(),
    );
  }

  Widget svgImageViewer() {
    return SvgPicture.network(
      imgUrl,
      height: height,
      width: width,
      fit: boxFit,
      // placeholderBuilder: (BuildContext context) =>
      //     showPlaceholder ? shimmerContainer() : lottieContainer(),
    );
  }

  /*
  Widget svgImageViewer() {
    if(imgUrl.contains("assets/images/")){
      return SvgPicture.asset(
        imgUrl,
        height: height,
        width: width,
       // placeholderBuilder: (BuildContext context) => lottieContainer(),
      );
    }else{
      return SvgPicture.network(
        imgUrl,
        height: height,
        width: width,
        placeholderBuilder: (BuildContext context) => lottieContainer(), );
    }
  }
  */

  ImageType getImageType(String url) {
    var path = url.split(".");
    String ext = path[path.length - 1];
    if (ext == "svg") return ImageType.svg;
    return ImageType.png;
  }

// Widget lottieContainer() => Container(
//     height: height,
//     width: width,
//     constraints: BoxConstraints(
//       maxHeight: height,
//       maxWidth: width,
//     ),
//     child: Lottie.asset('assets/json/jeetar_loader.json'));

// Widget shimmerContainer() => Shimmer.fromColors(
//       baseColor: AppColors.jeetarLightGrey,
//       highlightColor: AppColors.jeetarPureWhite,
//       child: Container(
//         height: height,
//         width: double.infinity,
//         margin: EdgeInsets.symmetric(vertical: 9.h),
//         decoration: BoxDecoration(
//           color: AppColors.jeetarPureWhite,
//           borderRadius: BorderRadius.all(Radius.circular(10.r)),
//           boxShadow: [
//             BoxShadow(
//               color: Color.fromRGBO(19, 129, 255, 1).withOpacity(.07),
//               offset: Offset(0, 0),
//               blurRadius: 8.r,
//             )
//           ],
//         ),
//       ),
//     );
}
