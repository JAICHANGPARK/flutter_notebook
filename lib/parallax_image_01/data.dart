

class IntroItem{

  final String title;
  final String category;
  final String imageUrl;

  IntroItem({this.title, this.category, this.imageUrl});

}

final sampleItems = <IntroItem>[
  new IntroItem(title: "Blueberry" , category: "FRUITS", imageUrl: "https://cdn.pixabay.com/photo/2010/12/13/10/05/background-2277_960_720.jpg"),
  new IntroItem(title: "Ice-cream" , category: "DESSERT", imageUrl: "https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-cone-1274894_960_720.jpg"),
  new IntroItem(title: "Pasta" , category: "FOOD", imageUrl: "https://cdn.pixabay.com/photo/2016/02/05/15/34/pasta-1181189_960_720.jpg"),

];