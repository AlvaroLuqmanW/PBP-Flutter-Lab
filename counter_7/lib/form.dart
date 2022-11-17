import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';
import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    String _nominal = 0;
    String _tipeBudget = "";

    var items = ['Pemasukan', 'Pengeluaran'];

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
                                        // Menambahkan icon agar lebih intuitif
                                        icon: const Icon(Icons.people),
                                        // Menambahkan circular border agar lebih rapi
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
                                    decoration: InputDecoration(
                                        labelText: "Nominal",
                                        // Menambahkan circular border agar lebih rapi
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (int? value) {
                                        setState(() {
                                            _nominal = value!;
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (int? value) {
                                        setState(() {
                                            _nominal = value!;
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (int? value) {
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
                                        // Initial Value
                                        value: _tipeBudget,
                                        
                                        // Down Arrow Icon
                                        icon: const Icon(Icons.keyboard_arrow_down),   
                                        
                                        // Array list of items
                                        items: items.map((String items) {
                                            return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                            );
                                        }).toList(),
                                        // After selecting the desired option,it will
                                        // change button value to selected value
                                        onChanged: (String? newValue) {
                                            setState(() {
                                            dropdownvalue = newValue!;
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
                                        showDialog(
                                        context: context,
                                        builder: (context) {
                                        },
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