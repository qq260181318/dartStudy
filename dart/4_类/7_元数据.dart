/*
* .元数据以@开头，可以给代码标记一些额外的信息
*     .元数据可以用来库、类、构造器、函数、字段、参数或变量声明的前面
* .@override（重写）
*     .某方法添加该注解后，表示重写了分类中的同名方法
* @required（必填）
*     .可以通过require来注解Dart中的命名参数，用于指示它是必填参数
* @deprecated(弃用)
*     .若某类或某方法加上该注解之后，表示此方法或类不建议使用
*
* */
class Phone{
  @deprecated
  void activate(){
    turnOn();
  }
  void turnOn(){
    print("开机");
  }
}

void main(){
  Phone phone = Phone();
  phone.activate();
  phone.turnOn();

}