

main(){

  var listNames = [10,20,30,40];
  listNames.add(50);
  print(listNames);
  /*listNames[1]=10;
  print("$listNames");*/

  listNames.replaceRange(0, 2, [9,5,4]);
  print(listNames);

  listNames.removeLast();
  print(listNames);
  print("Length: ${listNames.length}");


  /*var newList=[];
  newList.add("Raman");
  newList.addAll(listNames);
  newList.insert(2, 44);
  print(newList);*/


}