class Person{
  String name;
  //私有属性
  int _age;
  Person(this.name,this._age);
  //间接读取私有属性
  int getAge(){
    return _age;
  }
  //私有方法
  void _wife(){
    print("我是 $name 的老板");
  }
}