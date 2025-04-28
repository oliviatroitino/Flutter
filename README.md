# flutterprojects

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Teoría
## General de Flutter
### Plataformas
Al crear la aplicación, se pueden seleccionar todas las plataformas, pero no las podremos terminar todas.
Por ejemplo, yo desde MacOS no puedo terminar las aplicaciones de tipo Linux o Windows.
### lib
El fichero `lib` contiene el código común para todas las plataformas.
### Formateo
`Code>Reformat Code` para emprolijar (Option+Command+L).
`Alt/Option + Enter`: Abre un menu de Wrap.
### Ejecución
Conviene elegir `Chrome (web)` que hace como en web y te crea una página en chrome.
### Tipos de widgets: Stateless y Stateful.
- Stateless: Renderiza datos o gestiona acciones -> Tiene una clase (CSL)
- Stateful: Renderiza y guarda datos -> Tiene dos clases (CSF, CSFS)

#### Stateless
```dart
class CSL extends Stateless {
  @override
  Widget build() {}
}
```

#### Stateful
```dart
class CSF extends Stateful {
  @override
  State createState(){
    return CSFS;
  }
}
class CSFS extends State {
  @override
  Widget build() {}
}
```
### Design Systems
Hay técnicamente tres tipos de Widgets en relación al diseño ([Design System](https://docs.flutter.dev/ui/widgets)):
- Material (estilo Android/Web)
- Cupertino (estilo iOS)
- Widget (estilo personalizable/para especializar)
### Scaffold
`Scaffold` define la estructura general de la aplicación.
Por ejemplo, en el build() de CSFS (State):
```dart
return Scaffold(
    appBar: AppBar(...),
    body: Center(...),
    floatingActionButton: FloatingActionButton(...)
)
```

# Práctica
## Crear una pantalla
1. Crear un fichero `CalculadoraPage.dart` en `lib`.
2. Crear la clase que representa la pantalla de la calculadora
   3. Tiene que ser con estado: `class CalculadoraPage extends StatefulWidget` (CSF)
   4. El StatefulWidget tiene que ser el material (estilo Android) si estamos haciendolo con Android
5. Agregar el `createState()` y el `CalculadoraState` (CSFS)
6. `CalculadoraState` debe tener el `Widget build(BuildContext context)`
_Nota_: mi app está en `MyApp` en `main.dart`
7. En `MyApp`, dentro de `Widget build`>`MaterialApp`> `home: CalculadoraPage()`
8. En `CalculadoraState` ponemos una variable (que para algo estamos haciendo Stateful)
9. Planeamos y hacemos la jerarquía de componentes con `Scaffold`:

```
MaterialApp
|__ `CalculadoraPage`
    |__ `Scaffold`
        |__ `AppBar`
        |   |__ `Text`
        |__ `Body`
            |__ `Center`
                |__ `Column`
                    |__ `Text`
                    |__ `Row`
                    |   |__ `TextField`
                    |   |__ `TextField`
                    |__ `Button`
                    |   |__ `Text`
                    |__ `Text`
```

En el center no se puede poner un padding como en los otros elementos/children, lo envolvemos en un Container y le ponemos a este el padding.
Para recibir los datos de los `TextField`, usamos dos `TextEditingController`. Agregamos cada controller en el `TextField` correspondiente y cuando se actualizan los valores se guardan en los controllers.