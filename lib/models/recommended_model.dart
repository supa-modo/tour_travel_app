class RecommendedModel {
  String name;
  String image;
  String description;

  RecommendedModel(this.name, this.image, this.description);

}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name']!, item['image']!, item['description']!))
    .toList();

var recommendationsData = [
  {
    "name": "Raja Ampat, Indonesia",
    "image":
        "https://images.pexels.com/photos/2583852/pexels-photo-2583852.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "description":
        "lorem ipsum dolor sit amet, consectetur adipis non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro"
  },
  {
    "name": "Bali, Indonesia",
    "image":
        "https://images.unsplash.com/photo-1539367628448-4bc5c9d171c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
    "description":
        "lorem ipsum dolor sit amet, consectetur adipis non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro"
  },
  {
    "name": "Yogyakarta, Indonesia",
    "image":
        "https://images.unsplash.com/photo-1584810359583-96fc3448beaa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
    "description":
        "lorem ipsum dolor sit amet, consectetur adipis non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos n"
  },
  {
    "name": "Wiang Kum Kam, Thailand",
    "image":
        "https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    "description":
        "lorem ipsum dolor sit amet, consectetur adipis non pro pos meaning nong non pro pos meaning non pro pos meaning non p"
  },
  {
    "name": "Garden The Bay, Singapore",
    "image":
        "https://images.unsplash.com/photo-1506351421178-63b52a2d2562?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
    "description":
        "lorem ipsum dolor sit amet, consectetur adipis non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos meaning non pro pos"
  },
];
