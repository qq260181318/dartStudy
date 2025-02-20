/*
*初始化列表
* .作用：在构造函数中设置属性的默认值
* .时机：在构造函数体执行之前执行
* .语法：使用逗号分割初始化表达式
* .场景：常用于设置final常量的值
*
* */

class Rect{
  int height;
  int width;
  Rect():height=50,width=250{
    print("高度 $height,宽度 $width ");
  }
  num get area{
    return height * width;
  }
}
class Point{
  double x,y,z;
  Point(this.x,this.y,this.z);
  //初始化列表的特殊用法（重定向构造函数）
  Point.twoD(double x,double y):this(x,y,0);
  num get area{
    return x * y * z;
  }
}
void main(){
  Rect rect = Rect();
  print(rect.area);
  Point point = Point(10, 20, 8);
  print(point.area);
  Point point2 = Point.twoD(15, 60);
  print(point2.area);

}