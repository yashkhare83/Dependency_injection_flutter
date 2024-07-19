import 'package:main/services/coffee_service.dart';

// Create a class that depends on the service to do its job.
class Starbucks {
  final CoffeeService coffeeService;

  Starbucks(this.coffeeService);

  String serveCoffee() {
    return coffeeService.cappuccino();
  }
}
