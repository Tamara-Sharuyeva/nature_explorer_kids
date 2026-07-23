class Animal {
  final String name;
  final String image;
  final String description;


  final String habitat;
  final String food;
  final String size;
  final String weight;

  final List<String> facts;

  const Animal({
    required this.name,
    required this.image,
    required this.description,

    required this.habitat,
    required this.food,
    required this.size,
    required this.weight,

    required this.facts,
  });
}