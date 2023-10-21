class OnBoardingModel {
  final String title;
  final String subTitle;
  final String subSubTitle;
  final String subSubSubTitle;
  OnBoardingModel(  {required this.title,required this.subSubTitle,required this.subSubSubTitle,required this.subTitle});
}
List<OnBoardingModel>onBoardingData = [
OnBoardingModel(title: "Welcome" , subTitle: "To ",subSubTitle: "", subSubSubTitle: "STIPS"),
OnBoardingModel(title: "We Will ", subTitle: "Take Care", subSubTitle:"of your home or your company", subSubSubTitle: ''),
OnBoardingModel(title: "Relax", subTitle: "& Enjoy", subSubTitle: "A world of luxury of your fingertips", subSubSubTitle: '')
];