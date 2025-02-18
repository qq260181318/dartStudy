/*
* .Getter(获取器)是通过get关键字修饰的方法
*   .函数没有小括号，访问时也没有小括号（像访问属性一样访问方法）
* .Setter(修改器)是通过set关键字修饰的方法
*   .访问时，像设置属性一样给函数传参
*
* */
class Circle{
  final double PI =3.1415;
  num r;
  Circle(this.r);
  //使用get 声明的方法，不能有()
  num get area{
    return PI *r *r;
  }
  set newR(num r){
    this.r = r;
  }
}
void main(){
  Circle circle = Circle(5);
  //get获取器访问时像访问属性一样
  print(circle.area);
  //set修改器修改数据时像变量赋值一样
  circle.newR = 16;
  print(circle.area);

}