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
El fichero `lib` contiene el código común para todas las plataformas

## Dart
### Tipos de widgets: Stateless y Stateful.
- Stateless: Renderiza datos o gestiona acciones -> Tiene una clase
- Stateful: Renderiza y guarda datos -> Tiene dos clases

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