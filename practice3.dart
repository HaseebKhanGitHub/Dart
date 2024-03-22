
void main(){
  print('Welcome to Flutter');

  var myC= myClass();


  print(myC.Add1());
  print(myC.Add(2,3));


}

class myClass{

  myClass(){ //default constructors
    print("Object has been created!");
  }
  int Add1(){
    int a=3, b=4;
    int res=a+b;
    return res;
  }

  int Add(int no1, int no2){
    int sum=no1+no2;
    return sum;
  }
}