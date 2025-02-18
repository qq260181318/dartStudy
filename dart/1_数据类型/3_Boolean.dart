void main(){
  /*
  * . Dart通过bool关键字来表示布尔类型
  * . 布尔类型只有两个值：true和false
  * . 对变量进行判断时，要显式地检查布尔值
  *     . if(value){...} 报错
  *     . if(value == 0){...} 显式 条件表达式
  *     . if(value == null){...} 显式 条件表达式
  *
  * */
  bool flag1 = true;
  print(flag1);
  bool flag2 = false;
  print(flag2);

  var flag3;
  // 错误写法
  // if(flag3){
  //   print("真");
  // }else{
  //   print("假");
  // }
  // 显示的进行判断
  if(flag3==null){
    print("真");
  }else{
    print("假");
  }
}