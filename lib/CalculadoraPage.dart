// La clase que representa la pantalla de la calculadora

import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculadoraState();
  }
}

class CalculadoraState extends State<CalculadoraPage> {
  int resultado = 0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora APP")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Por favor introduce los operandos que quieres utilizar: "),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Introduce Operando 1",
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 12.0, right: 12.0)),
                  Expanded(
                    child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Introduce Operando 2",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              ElevatedButton(onPressed: () {
                // Capturar los operandos
                int operando1 = int.parse(controller1.text);
                int operando2 = int.parse(controller2.text);
                setState(() {
                  resultado = operando1 + operando2;
                });
              }, child: Text('Calcular')),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              Text("El resultado final es: $resultado")
            ],
          ),
        ),
      ),
    );
  }
}
