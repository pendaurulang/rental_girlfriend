class Testimoni {
  final int id;
  final String picture, description, name;
  final double star;

  Testimoni({this.id, this.name, this.picture, this.star, this.description});
}

List<Testimoni> testimoni = [
  Testimoni(
    id: 1,
    name: "Le",
    picture: "",
    star: 4.9,
    description: "UwU banget pokoknya :*",
  ),
  Testimoni(
    id: 2,
    name: "Lo",
    picture: "",
    star: 4.8,
    description: "Meleleh saya tuh",
  ),
  Testimoni(
    id: 3,
    name: "Li",
    picture: "",
    star: 4.0,
    description: "Good Job!",
  ),
];
