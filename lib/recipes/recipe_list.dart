class RecipeList{
  String imgURL;
  String name;
  String cost;
  String gender;


  RecipeList(this.imgURL, this.name, this.cost, this.gender);

  static List<RecipeList>  recipeGetList = [
    RecipeList("assets/listImage/koylak.png", "T-Shirt", "30" , "Men" ),
    RecipeList("assets/listImage/shim.png", "Shorts", "28" , "Men"),
    RecipeList("assets/listImage/jacet.png", "Cardigans", "72" , "Men"),
    RecipeList("assets/listImage/koylakayol.png", "Dresses", "45" , "Women"),
    RecipeList("assets/listImage/divan.png", "Home", "100" , "Men"),
    RecipeList("assets/listImage/galstuk.png", "Others", "16" , "Men"),


  ];


}