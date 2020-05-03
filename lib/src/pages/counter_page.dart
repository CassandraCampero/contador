import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  @override
  createState() =>  _CouterPageState();

}

class _CouterPageState extends State<CounterPage>{

  //Podemos reutilizar
  final _styleText = new TextStyle( fontSize: 25);
  int   _contador = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
        elevation: 1.10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola Cassandra: ', 
                style: _styleText,
                ),
            Text('$_contador', 
                style: _styleText,
                ),
          ],
        ),
        ),
      floatingActionButton: 
        _crearBotones(),
      floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones ( ){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 5.0 ),//px 
        FloatingActionButton(
          child:  Icon( Icons.refresh),
          onPressed: _reset,
          ),
        Expanded(
            child: SizedBox( width: 5.0 )
            ),
        FloatingActionButton(
          child:  Icon( Icons.remove),
          onPressed: _sustraer,
          ),
        SizedBox( width: 5.0 ),
        FloatingActionButton(
          child:  Icon( Icons.add),
          onPressed: _agregar,
          ),
        SizedBox( width: 5.0),
      ],
    );
    }
    
    void _agregar() {
            _contador = _contador + 10;
            setState((){}); //nos ayuda a mantener el estado de la app
    }

    void _sustraer() {
            _contador = _contador == 0 ? _contador : _contador -10 ;
            setState((){}); //nos ayuda a mantener el estado de la app
            }
    
    void _reset() {
            _contador = 0;
            setState((){}); //nos ayuda a mantener el estado de la app
          }
    
  

}