class Recipe{
  String imgURL;
  String name;


  Recipe(this.imgURL, this.name);

  static List<Recipe>  recipeList = [
    Recipe("assets/images/newkirmoshina.png", "Wash & Iron"),
    Recipe("assets/images/dazmol.png", "Ironing"),
    Recipe("assets/images/bumaga.png", "Dry Cleaning"),
    Recipe("assets/images/plus.png", "Laundry +"),
  ];




}