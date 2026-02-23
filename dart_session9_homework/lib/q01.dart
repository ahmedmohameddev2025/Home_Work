// Q1
// Design an OOP model for planning trip fuel across multiple vehicle types.
// Requirements:- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
// (invalid → print an error; keep previous values).- Create at least two specialized vehicle types that inherit from the general type and introduce one
// private field each affecting fuel usage, with validation.- Define a fuel computation method in the general type; specialized types must override it with their own
// rule.- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
// which vehicles cannot complete the route under their own constraints (you define the constraint per
// type).
void main() {
  List<Vehicle> vehicles = [
    Car(fuelEfficiency: 25, maxDistance: 600),
    Truck(fuelEfficiency: 12, loadFactor: 1.8),
  ];

  List<double> tripDistances = [150, 300, 600];

  for (var v in vehicles) {
    double totalFuel = 0;
    bool canComplete = true;

    for (var d in tripDistances) {
      if (!v.canTravel(d)) {
        canComplete = false;
      }
      totalFuel += v.fuelNeeded(d);
    }

    print('${v.runtimeType}: Fuel = ${totalFuel.toStringAsFixed(2)}');
    if (!canComplete) {
      print('Cannot complete the trip');
    }
  }
}

class Vehicle {
  double _fuelEfficiency;

  Vehicle(double fuelEfficiency)
      : _fuelEfficiency = fuelEfficiency > 0 ? fuelEfficiency : 10 {
    if (fuelEfficiency <= 0) {
      print('Invalid fuel efficiency, default used');
    }
  }

  double fuelNeeded(double distance) {
    return distance / _fuelEfficiency;
  }

  bool canTravel(double distance) => true;
}



class Car extends Vehicle {
  double _maxDistance;

  Car({required double fuelEfficiency, required double maxDistance})
      : _maxDistance = maxDistance > 0 ? maxDistance : 300,
        super(fuelEfficiency) {
    if (maxDistance <= 0) {
      print('Invalid max distance, default used');
    }
  }

  @override
  bool canTravel(double distance) => distance <= _maxDistance;
}



class Truck extends Vehicle {
  double _loadFactor;

  Truck({required double fuelEfficiency, required double loadFactor})
      : _loadFactor = loadFactor > 0 ? loadFactor : 1,
        super(fuelEfficiency) {
    if (loadFactor <= 0) {
      print('Invalid load factor, default used');
    }
  }

  @override
  double fuelNeeded(double distance) {
    return super.fuelNeeded(distance) * _loadFactor;
  }
}
