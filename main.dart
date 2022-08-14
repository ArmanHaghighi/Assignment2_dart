main(){
var tomato = Vegetable(color:"red",remove_skin:"false",eat_raw: "true");
var eggplant = Vegetable(color:"purple",remove_skin:"true",eat_raw: "false");
var banana = Fruit(color: "yellow",taste: "sweet",stone:"false");
var cherry =Fruit(color: "red",taste: "sour",stone:"true");
var salad1 =Salad(vegetable: eggplant,sauce:"white");


print("eggplant in salad? " + eggplant.in_salad());
//print("salad? " + salad1.good());
print("cherry in salad? " + cherry.in_salad());
print("peel eggplant ? " + eggplant.peel());


}
class Vegetable {
  var color;
  var remove_skin;
  var eat_raw;
  in_salad(){
    if(this.eat_raw=="true"){
      return("yes");
    }
    else {
      return ("no");
    } }
    peel(){
    if(this.remove_skin=="true"){
      return("yes");
    }
    else {
      return ("no");
    }}
  Vegetable({this.color,this.remove_skin,this.eat_raw});
}
class Salad {
  var vegetable;
  var sauce;
 /* good(){
    if(this.vegetable.in_salad=="no"){
      return("no");
    }
  }*/
  Salad({this.vegetable,this.sauce});
}
class Fruit {
var color;
var taste;
var stone;
in_salad(){
  if(this.stone=="false"){
    return("yes");
  }
  else{
    return("no");
  }
}
Fruit({this.color,this.taste,this.stone});
}

