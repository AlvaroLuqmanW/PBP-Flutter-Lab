import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/to_do_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    String _nominal = "";
    String _tipeBudget = "Pilih Jenis";
    List<String> budgets = ['Pilih Jenis','Pemasukan', 'Pengeluaran'];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
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
                    ListTile(
                    title: const Text('My Watch List'),
                    onTap: () {
                        // Route menu ke halaman to do
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const ToDoPage()),
                        );
                    },
                ),
                ],
                ),
            ),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                            Padding(
                                // Menggunakan padding sebesar 8 pixels
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Judul",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (String? value) {
                                        setState(() {
                                            _judul = value!;
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (String? value) {
                                        setState(() {
                                            _judul = value!;
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                            return 'Judul tidak boleh kosong!';
                                        }
                                        return null;
                                    },
                                ),    
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly],
                                    decoration: InputDecoration(
                                        labelText: "Nominal",
                                        // Menambahkan circular border agar lebih rapi
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (String? value) {
                                        setState(() {
                                            _nominal = value!;
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (String? value) {
                                        setState(() {
                                            _nominal = value!;
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (String? value) {
                                        if (value == null) {
                                            return 'Nominal harus angka dan tidak boleh kosong!';
                                        }
                                        return null;
                                    },
                                ),
                            ),
                            Container(
                                margin: const EdgeInsets.all(8),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        DropdownButton(
                                        value: _tipeBudget,
                                        icon: const Icon(Icons.keyboard_arrow_down),   
                                        items: budgets.map((String items) {
                                            return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                            );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                            setState(() {
                                            _tipeBudget = newValue!;
                                            });
                                        },
                                        
                                        ),
                                    ]
                                )
                            ),
                            TextButton(
                                child: const Text(
                                    "Simpan",
                                    style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                        Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => const MyDataPage()),
                                        );         
                                    }
                                },
                                ),

                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}