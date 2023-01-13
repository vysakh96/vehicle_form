import 'package:flutter/material.dart';
import 'package:vehicle_form/provider/provider_page.dart';

import '../model_class.dart';
import 'screen2_page.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List bikeNo = object.bikeVehicleNoDetails;
    List bikeBrand = object.bikeBrandNameDetails;
    List bike = object.vehicleTypeDetails;
    List bikeFuel = object.bikeFuelTypeDetails;

    List carNo = object.CarvehicleNoDetails;
    List carBrand = object.carBrandNameDetails;
    List car = object.vehicleTypeDetails;
    List carFuel = object.carFuelTypeDetails;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Card(
          child: ListTile(
            title: Text(
              'Add Vehicle',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(8),
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenTwo()));
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Vehicle Details',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                'Bike',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'Car',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: bikeNo.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        object.remove(
                                            bikeNo[index],
                                            bikeBrand[index],
                                            bike[index],
                                            bikeFuel[index]);
                                      },
                                      child: Icon(
                                        Icons.close_outlined,
                                        color: Colors.red,
                                      ))),
                              Text(
                                bikeNo[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                bikeBrand[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                bike[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                bikeFuel[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: carNo.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        object.removeList(carNo[index])?object.remove('', '', '', ''):
                                        object.remove(
                                            carNo[index],
                                            carBrand[index],
                                            car[index],
                                            carFuel[index]);
                                      },
                                      child: Icon(
                                        Icons.close_outlined,
                                        color: Colors.red,
                                      ))),
                              Text(
                                carNo[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                carBrand[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                car[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                carFuel[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ]),
        // body:
      ),
    );
  }

  // List bike = [
  //   Bike(
  //       vehicleNo: 'KA01AB1010',
  //       brandName: 'Brand Name',
  //       vehicleType: 'Vehicle Type',
  //       fuelType: 'Fuel Type')
  // ];
  // List car = [
  //   Car(
  //       vehicleNo: 'KA01AB1010',
  //       brandName: 'Brand Name',
  //       vehicleType: 'Vehicle Type',
  //       fuelType: 'Fuel Type')
  // ];

}
