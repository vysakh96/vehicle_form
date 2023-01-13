import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_form/designs/screen1_page.dart';
import 'package:vehicle_form/provider/provider_page.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final List<String> items = [
    'HERO',
    'HONDA',
    'TATA',
    'TVS',
    'MAHINDRA',
    'BAJAJ',
    'HYUNDAI',
    'KTM',
    'SUZUKI',
    'ROYAL ENFIELD'
  ];
  String? selectedValue;
  final List<String> types = ['Bike', 'Car'];
  String? selectType;
  final List<String> fuels = ['Petrol', 'Diesel'];
  String? selectFuelType;

  String? textvalue;

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {
            object.storeDetails(
                textvalue!, selectedValue!, selectType!, selectFuelType!);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenOne()));
          },
          child: Padding(
            padding: const EdgeInsets.only(
                top: 10, bottom: 10, right: 115, left: 115),
            child: Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
      appBar: AppBar(
        title: Text(
          'Vehicle Form',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Vehicle No',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )),
              SizedBox(height: 10),
              TextFormField(
                  // controller: _vehicleNoController,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (value) {
                    textvalue = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'KA01AB1010'),
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r"^[a-zA-z]{2}\s[0-9]{2}\s[0-9]{4}$")
                            .hasMatch(value!)) {
                      return "Enter valid number";
                    } else {
                      return null;
                    }
                  }),
              SizedBox(height: 30),
              Center(
                  child: Text(
                'Vehicle Type',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )),
              SizedBox(height: 10),
              SizedBox(
                width: 340,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    hint: Text('Drop down'),
                    value: selectType,
                    items: types
                        .map((type) => DropdownMenuItem<String>(
                              value: type,
                              child: Text(
                                type,
                                style: TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (type) {
                      setState(() {
                        selectType = type;
                      });
                    }),
              ),
              SizedBox(height: 30),
              Center(
                  child: Text(
                'Brand Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )),
              SizedBox(height: 10),
              SizedBox(
                width: 340,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    hint: Text('Drop down'),
                    value: selectedValue,
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(color: Colors.black),
                            )))
                        .toList(),
                    onChanged: (item) {
                      setState(() {
                        selectedValue = item;
                      });
                    }),
              ),
              SizedBox(height: 30),
              Center(
                  child: Text(
                'Fuel Type',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )),
              SizedBox(height: 10),
              SizedBox(
                width: 340,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    hint: Text('Drop down'),
                    value: selectFuelType,
                    items: fuels
                        .map((fuel) => DropdownMenuItem<String>(
                              value: fuel,
                              child: Text(
                                fuel,
                                style: TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (fuel) {
                      setState(() {
                        selectFuelType = fuel;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
