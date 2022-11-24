import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/to_do_page.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class MyDetailsPage extends StatefulWidget {
    const MyDetailsPage({super.key});

    @override
    State<MyDetailsPage> createState() => _MyDetailsPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
        )
    }
}