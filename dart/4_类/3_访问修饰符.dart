import 'lib/Person.dart';
void main(){

  /*
  * .Dart类中，默认的访问修饰符是公开的（即public）
  * .如果属性或方法以_（下划线）开头，则表示私有（即private）
  * .如果声明的私有方法或属性于当下main函数处于同一个作用域将不起作用
  *     只有把类单独抽离出去，私有属性和方法才起作用
  *
  *
  * */
  Person person = Person("小红", 26);

}