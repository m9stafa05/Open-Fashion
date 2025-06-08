class CoverModel {
  final String image;
  final String title;

  CoverModel({required this.image, required this.title});

  static List<CoverModel> coverList = [
    CoverModel(
      image: 'assets/cover/cover.png',
      title: 'White collection',
    ),
    CoverModel(
      image: 'assets/cover/cover01.png',
      title: 'Black collection',
    ),
    CoverModel(
      image: 'assets/cover/cover02.png',
      title: 'HAE BY HAEKIM',
    ),
  ];
}
