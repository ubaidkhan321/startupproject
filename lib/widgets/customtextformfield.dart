
import 'package:newsapp/const/const.dart';


class Customtextformfield extends StatefulWidget {

  final String hint;
  final Icon? icon;
  final String labelhint;
  final bool? ispassword;
  final TextEditingController controller;

  const Customtextformfield({super.key,required this.hint,required this.labelhint,this.ispassword = false, this.icon,required this.controller});

  @override
  State<Customtextformfield> createState() => _CustomtextformfieldState();
}

class _CustomtextformfieldState extends State<Customtextformfield> {
  var showpassword = false;
  changestatepass(){
    
    setState(() {
      showpassword = !showpassword;
     
    });
  }
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: widget.ispassword! && !showpassword,
      controller:widget.controller ,
          decoration: InputDecoration(
            
            hintText: widget.hint,
            hintStyle: AppStyle.regular(),
            labelStyle: AppStyle.semibold(),
            labelText: widget.labelhint,
            suffixIcon:  widget.ispassword == false ? widget.icon :  Icon(showpassword == true ?  Icons.lock_open  : Icons.lock,color: showpassword == false  ? Colors.blue : Colors.red,).onTap(() {
             changestatepass();
          
            }),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.bookmarkcard
              )
            ),focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.privacycard
              )
            )

          ),
        );
        
  }
}