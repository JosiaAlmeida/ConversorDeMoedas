import 'package:conversordemoedas/provider/app_provider.dart';
import 'package:flutter/material.dart';

List<String> listTypeConvert = [
  'Kwanza',
  'Euro',
  'Dolar',
  'Reais',
];
class Dropdow2 extends StatefulWidget {
  Dropdow2({Key? key}) : super(key: key);

  @override
  _Dropdow2State createState() => _Dropdow2State();
}

class _Dropdow2State extends State<Dropdow2> {
  String valueSelect = listTypeConvert.first;
  @override
  void initState(){
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    //appProvider instance = new appProvider();
    return Container(
      constraints: BoxConstraints(maxWidth: 90),
      child: DropdownButton(
        isExpanded: true,
        value: valueSelect,
        style: TextStyle(color: Colors.blueAccent),
        icon: Icon(Icons.keyboard_arrow_down),
        underline: Container(color: Colors.transparent,),
        onChanged: (newValor){
          setState(() {
            valueSelect= newValor.toString();
            appProvider.instance.tipoMoeda2 = valueSelect;
          });
        },
        items: listTypeConvert.map((e) {
          return DropdownMenuItem(
            child: Container(
              margin: EdgeInsets.only(right: 4, left: 4),
              child: Text(e),
            ),
            value: e,
          );
        }).toList(),
      ),
    );
  }
}
