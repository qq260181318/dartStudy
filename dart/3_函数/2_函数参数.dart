void main(){
  /*
  * .必填参数
  *     .参数类型 参数名称
  * .可选参数
  *     .放在必选参数的后面
  *     .通过中括号[]包裹起来
  *     .带默认值的可选参数
  * .命名参数
  *     .用大括号包裹{}起来,必须有默认值
  *     .调用函数时，命名参数的名称与声明函数中的名称保持一致
  * .函数参数
  *     .用函数作为参数
  *
  * */
  //必填参数
    String userInfo(String name){
      return name;
    }
    print(userInfo("张三"));
  //可选参数
    String userInfo2(String name,[dynamic age]){
      return "你好 $name ,年龄 $age";
    }
    print(userInfo2("张三",15));
  //可选参数带默认值
    String userInfo3(String name,[dynamic age,String sex="男"]){
      return "你好 $name ,年龄 $age ,性别 $sex";
    }
    print(userInfo3("小红",25,"女"));
  //命名参数
    String user(String name,{String sex = "男"}){
      return "你好 $name ,性别 $sex";
    }
    print(user("李四"));
  //函数参数
   

}