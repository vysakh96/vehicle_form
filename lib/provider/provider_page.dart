import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier {
  List<String> _bikeVehicleNo = [];
  List get bikeVehicleNoDetails => _bikeVehicleNo;

  List _bikeBrandName = [];
  List get bikeBrandNameDetails => _bikeBrandName;

  List _vehicleType = [];
  List get vehicleTypeDetails => _vehicleType;

  List _bikeFuelType = [];
  List get bikeFuelTypeDetails => _bikeFuelType;

  List _carVehicleNo = [];
  List get CarvehicleNoDetails => _carVehicleNo;

  List _carBrandName = [];
  List get carBrandNameDetails => _carBrandName;

  List _carFuelType = [];
  List get carFuelTypeDetails => _carFuelType;

  void storeDetails(
      String vehicleNo, String brandName, String vehicleType, String fuelType) {
    if (vehicleType == 'Bike') {
      _bikeVehicleNo.add(vehicleNo);
      _bikeBrandName.add(brandName);
      _vehicleType.add(vehicleType);
      _bikeFuelType.add(fuelType);
    } else {
      _carVehicleNo.add(vehicleNo);
      _carBrandName.add(brandName);
      _vehicleType.add(vehicleType);
      _carFuelType.add(fuelType);
    }
    notifyListeners();
  }

  void remove(
      String vehicleNo, String brandName, String vehicleType, String fuelType) {
    if (vehicleType == 'Bike') {
      _bikeVehicleNo.remove(vehicleNo);
      _bikeBrandName.remove(brandName);
      _vehicleType.remove(vehicleType);
      _bikeFuelType.remove(fuelType);
    } else {
      _carVehicleNo.remove(vehicleNo);
      _carBrandName.remove(brandName);
      _vehicleType.remove(vehicleType);
      _carFuelType.remove(fuelType);
    }
  }

  bool removeList(String s){
    bool b=_bikeVehicleNo.contains(s);
    return b;
  }
}
