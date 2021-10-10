import 'dart:ffi';

import 'package:conversordemoedas/components/Dropdown.dart';
import 'package:conversordemoedas/components/Dropdown2.dart';
import 'package:conversordemoedas/provider/app_provider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    appProvider _provider = new appProvider();
    double valor = 0.0 as double;
    return Scaffold(
      appBar: AppBar(title: Text("Conversor de moedas")),
      body: Container(
        color: Colors.black87,
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('lib/image/img/img.jpg'),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Dropdow2(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 200,
                            child: TextField(
                              onChanged: (valor) {
                                setState(() {
                                  if(valor == ''|| valor.isEmpty|| valor == ' '){
                                    valor = '0.0';
                                  }
                                  appProvider.instance.ConvertMoney(
                                    appProvider.instance.tipoMoeda2,
                                    appProvider.instance.tipoMoeda,
                                    double.parse(valor));
                                });
                              },
                              keyboardType: TextInputType.number,
                              style: Theme.of(context).textTheme.display1,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 20),
                                hintStyle: TextStyle(fontSize: 10),
                                labelText: 'Digite o valor',
                                prefix: Icon(
                                  Icons.attach_money,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Dropdow(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 200,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    color: Colors.blueAccent,
                                  ),
                                  Text(
                                    "${appProvider.instance.value} ${appProvider.instance.tipoMoeda}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blueAccent),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "josiaalmeida0001@gmail.com",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
