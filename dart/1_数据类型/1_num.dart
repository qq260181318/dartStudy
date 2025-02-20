void main(){
  /*
  * 数据类型：
  *         1.Number
  *                 .num数字类型（既可以是整数，也可以是小数）
  *                 .int表示整数（必须是整数）
  *                 .double表示浮点数（既可以是整数，也可以是小数）
  *                 常用api
  *                   https://api.dart.cn/stable/datr-core/num-class.html
   */
  //声明整数
  int count = 3;
  print(count);
  //声明浮点数
  //double price = 3;//可以定义整数，但输出的是3.0
  double price = 3.8;//可以定义整数，但输出的是3.0
  print(price);
  //声明数字类型
  num n3 = 3.7; //num 是整数和浮点数的聚合
  //类型转换
  print(n3.toString());
  print(4.6.toInt());//向下取正
  //四舍五入
  print(3.1415926.round());//输出3
  print(3.1415926.toStringAsFixed(4));//输出3.1416，从小数点的第几位四舍五入
  //返回余数
  print(16.remainder(6));//输出 4
  //数字比较--两数相等：0，大于1，小于-1
  print(15.compareTo(16));//输出-1
  //返回最大公约数
  print(12.gcd(26));
  //返回科学计数法
  print(5686.toStringAsExponential(2));
}