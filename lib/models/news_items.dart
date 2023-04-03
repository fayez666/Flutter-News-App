class NewsItem {
  final int id;
  final String title;
  final String imgUrl;
  final String category;
  final String author;
  final String time;

  NewsItem(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.category,
      required this.author,
      required this.time});
}

List<NewsItem> news = [
  NewsItem(
      id: 1,
      title: "Alexander wears modified \nhelmet in road races",
      imgUrl:
          "https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      category: "Sports",
      author: "CNN Indonesia",
      time: "6 hours ago"),
  NewsItem(
      id: 1,
      title: "What training Do Volley ball Players Need?",
      imgUrl:
          "https://plus.unsplash.com/premium_photo-1666955973759-655578290b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      category: "Sports",
      author: "Mckindney",
      time: "Feb 27, 2023"),
  NewsItem(
      id: 1,
      title: "Alexander wears modified \nhelmet in road races",
      imgUrl:
          "https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      category: "Sports",
      author: "CNN Indonesia",
      time: "6 hours ago"),
  NewsItem(
      id: 1,
      title: "Alexander wears modified \nhelmet in road races",
      imgUrl:
          "https://images.unsplash.com/photo-1541252260730-0412e8e2108e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=374&q=80",
      category: "Sports",
      author: "CNN Indonesia",
      time: "6 hours ago"),
  NewsItem(
      id: 1,
      title: "Alexander wears modified \nhelmet in road races",
      imgUrl:
          "https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      category: "Sports",
      author: "CNN Indonesia",
      time: "6 hours ago"),
];
