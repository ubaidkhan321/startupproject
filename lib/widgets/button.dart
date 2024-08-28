
import 'package:newsapp/const/const.dart';

Widget ourButton({String? title, onpress,Color? color}){
  return  ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
     
  
    ),
    
    onPressed: onpress,
    child: title?.text.white.make() );
}