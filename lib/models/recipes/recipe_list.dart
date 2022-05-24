class RecipeElement{
  String imgURL;
  String name;
  String cost;
  String gender;
  int count;


  RecipeElement(this.imgURL, this.name, this.cost, this.gender, this.count);

  static List<RecipeElement>  recipes = [
    RecipeElement("assets/listImage/koylak.png", "T-Shirt", "30" , "Men" ,0),
    RecipeElement("assets/listImage/shim.png", "Shorts", "28" , "Men",0),
    RecipeElement("assets/listImage/jacet.png", "Cardigans", "72" , "Men",0),
    RecipeElement("assets/listImage/koylakayol.png", "Dresses", "45" , "Women",0),
    RecipeElement("assets/listImage/divan.png", "Home", "100" , "Men",0),
    RecipeElement("assets/listImage/galstuk.png", "Others", "16" , "Men",0),


  ];


}