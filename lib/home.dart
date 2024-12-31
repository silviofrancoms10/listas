import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = {};
      item['titulo'] = 'Titulo ${i}';
      item['descricao'] = 'Descricao ${i}';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, index) {
              // Map<String, dynamic> item = _itens[index];
              // print("item ${item}");
              return ListTile(
                title: Text(_itens[index]['titulo']),
                subtitle: Text(_itens[index]['descricao']),
              );
            }),
      ),
    );
  }
}
