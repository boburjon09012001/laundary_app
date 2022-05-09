class LaundaryRecipe{
  String imgURL;
  String name;
  String cost;
  String getInfo;


  LaundaryRecipe(this.imgURL, this.name, this.cost, this.getInfo);

  static List<LaundaryRecipe>  laundaryRecipeList = [
    LaundaryRecipe("assets/images/man.png", "Individual", "10", "100 Cloths"),
    LaundaryRecipe("assets/images/relation.png", "Couple", "16","100 Cloths" ),
    LaundaryRecipe("assets/images/team.png", "Family", "25", "350 Cloths"),
  ];




}