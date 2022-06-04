class Content {
  late final String name;
  late final String imageURL;
  late final String description;
  late final String color;

  Content(
      {required this.name,
      required this.imageURL,
      required this.description,
      this.color = "red"});
}

const ROOT = "assets/Images/";
List contents = <Content>[
  Content(
      name: "TEST NAME",
      imageURL: "${ROOT}featured.jpg",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged")
];
