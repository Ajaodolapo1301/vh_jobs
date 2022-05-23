import '../../../shared/utils/asset_images.dart';

class OnBoardingItem {
  final String title;
  final String subtitle;
  final String image;

  const OnBoardingItem({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

class OnBoardingItems {
  static List<OnBoardingItem> loadOnboardItem(context) {
    return <OnBoardingItem>[
      const OnBoardingItem(
        title: "Hire The Right Professional For Your Business & Personal Needs",
        subtitle: "Professional and affordable services at your fingertips",
        image: AssetResources.one,
      ),
      const OnBoardingItem(
        title:
            "Join Thousands Of Brands Who Trust VhJobs To Handle Their Tasks",
        subtitle: "Hire a Vetted Professional (VhJobs Classic)",
        image: AssetResources.two,
      ),
      const OnBoardingItem(
        title: "Hire The Right Professional For Your Business & Personal Needs",
        subtitle: "Professional and affordable services at your fingertips",
        image: AssetResources.three,
      )
    ];
  }
}
