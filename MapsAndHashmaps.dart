main(){



/*  var map_name = {
    'key1':'value1',
    'key2':2,
    'key3':3.0,
    'key4':true
  };
  map_name['key1'] = 'Raman';
  print(map_name['key1']);
  */

  var mapName = Map();
  mapName['key1']="value 1";
  mapName['key2']=2;
  mapName['key3']=3.0;
  mapName['key4']=true;


  print(mapName);
  
  //functions
  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('key2'));
  print(mapName.containsValue(true));
  print(mapName.remove('key3'));
  print(mapName);

}