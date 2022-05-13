// class DotIndicator extends StatefulWidget {
//   final bool isActive;
//
//   const DotIndicator({Key? key, required this.isActive}) : super(key: key);
//   @override
//   _DotIndicatorState createState() => _DotIndicatorState();
// }
//
// class _DotIndicatorState extends State<DotIndicator> {
//   @override
//   Widget build(BuildContext context) {
//     return widget.isActive
//         ? AnimatedContainer(
//             duration: const Duration(milliseconds: 150),
//             height: 4,
//             width: 24,
//             decoration: BoxDecoration(
//                 color: AppColors.goMechoRed[100],
//                 borderRadius: const BorderRadius.all(Radius.circular(10.0))))
//         : AnimatedContainer(
//             duration: const Duration(milliseconds: 150),
//             height: 4,
//             width: 24,
//             decoration: BoxDecoration(
//                 color: AppColors.goMechoRed[30],
//                 borderRadius: const BorderRadius.all(Radius.circular(10.0))));
//   }
// }
