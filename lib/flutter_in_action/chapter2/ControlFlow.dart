
void main(){
  // if - else
  bool isTrue = false;
  if(isTrue && isTrue || isTrue){
    print(true);
  }else{
    print(false);
  }
  // switch - case
  int number = 1;
  switch(number){
    case 0:
      print('zero');
      break; //break를 수행하지 않으면 모든 case 수행
    default:
      print("edefault");
  }

  //ternary
  int? name;
  var nametag  = name == null ? "null" : "username";
}
