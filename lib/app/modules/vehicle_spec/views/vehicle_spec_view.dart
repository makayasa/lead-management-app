import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vehicle_spec_controller.dart';

class VehicleSpecView extends GetView<VehicleSpecController> {
  const VehicleSpecView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VehicleSpecView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VehicleSpecView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
