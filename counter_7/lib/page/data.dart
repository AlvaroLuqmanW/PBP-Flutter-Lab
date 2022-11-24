import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/to_do_page.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    List budgetList = ['A', 'B', 'C'];
    List<Widget> textWidgetList = [];
    
    @override
    Widget build(BuildContext context) {
        for (int i = 0; i < budgetList.length; i++) {
        textWidgetList.add(
            Container(
            child: Text(budgetList[i]),
            ),
        );
        }

        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: Drawer(
                child: Column(
                children: [
                    // Menambahkan clickable menu
                    ListTile(
                    title: const Text('counter_7'),
                    onTap: () {
                        // Route menu ke halaman utama
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHomePage()),
                        );
                    },
                    ),
                    ListTile(
                    title: const Text('Tambah Budget'),
                    onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyFormPage()),
                        );
                    },
                    ),
                    ListTile(
                    title: const Text('Data Budget'),
                    onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyDataPage()),
                        );
                    },
                    ),
                ],
                ),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: textWidgetList,
                ),
            ),
        );
    }
}