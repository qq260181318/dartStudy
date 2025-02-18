/*
* static 关键字用来指定静态成员
*   .通过static修饰的属性时静态属性
*   .通过static修饰的方法时静态方法
* .静态成员可以通过类名称直接访问（不需要实例化）
*   .实例化时比较消耗资源的，声明静态成员，可以提供程序性能
* .静态方法不能访问非静态成员，非静态方法可以访问静态成员
*   .静态方法中不能使用this关键字
*   .不能使用this关键字，访问静态属性
* */
class Person{
  static String name = "张三";
  static void printInfo(){
    //print(this.name); 静态方法不能使用this关键字，访问静态属性
    print(name);
  }
  void printUserInfo(){
    //非静态方法可以访问静态成员
    Person.name="张三老板";
    print("用户信息");
    printInfo();
  }
}
void main(){
  //静态成员可以通过类名称直接访问（不需要实例化）
  print(Person.name);
  Person.printInfo();
  Person person = Person();
  person.printUserInfo();
}