import 'package:spotifyapp/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {} //constructor and cannot make object(underscore means private)
  static List<Category> getCategories() {
    return <Category>[
      Category('Top Songs',
          'http://chatpatabollywood.com/wp-content/uploads/2015/06/Top.png'),
      Category('Dope Labs',
          'https://cachedimages.podchaser.com/256x256/aHR0cHM6Ly9pLnNjZG4uY28vaW1hZ2UvYWI2NzY1NjMwMDAwYmE4YWMxNzM1MjM5YmE2ZDc3N2EwNjI3YWMxYw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D'),
      Category('Alan Gogoll',
          'https://64.media.tumblr.com/avatar_582d536a10af_128.pnj'),
      Category('Latina to Latina',
          'https://cachedimages.podchaser.com/256x256/aHR0cHM6Ly9pbWFnZS5zaW1wbGVjYXN0Y2RuLmNvbS9pbWFnZXMvZjYyY2ZiMWEtMDc5Yy00MTQwLTlkYzYtZGU3MTY0ODM4MGRlLzMxOThiOTRlLTM1Y2ItNGU4My04ZGM3LTgwZjYxZDRiMzM3NS8zMDAweDMwMDAvbHRsbG9nbzMwMDBweC5qcGc%2FYWlkPXJzc19mZWVk/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D'),
      Category('Small doses',
          'https://omny.fm/shows/meruelo-la/internet-debates-tabasco-vs-sriracha/image.jpg?t=1584126389&size=Small'),
      Category('MJ Songs',
          'https://is1-ssl.mzstatic.com/image/thumb/Purple71/v4/d1/ba/85/d1ba8582-972e-7e02-6f3b-cc47adfc055f/source/256x256bb.jpg'),
    ];
  }
}
