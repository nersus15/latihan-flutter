List<HeroInterface> herolist = [
  HeroInterface('Superman', 'Man with super power'),
  HeroInterface('Superman', 'Man with super power'),
  HeroInterface('Batman', 'Man with great weapon'),
];

class HeroInterface {
  String name;
  String description;

  HeroInterface(String name, String desc) {
    this.name = name;
    this.description = desc;
  }
}
