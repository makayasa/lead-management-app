import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/detail_financing/bindings/detail_financing_binding.dart';
import '../modules/detail_financing/views/detail_financing_view.dart';
import '../modules/financing/bindings/financing_binding.dart';
import '../modules/financing/views/financing_view.dart';
import '../modules/financing_form/bindings/financing_form_bindings.dart';
import '../modules/financing_form/views/financing_form_view.dart';
import '../modules/form_created/bindings/form_created_binding.dart';
import '../modules/form_created/views/form_created_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/vehicle_registration/bindings/vehicle_registration_binding.dart';
import '../modules/vehicle_registration/views/vehicle_registration_view.dart';
import '../modules/vehicle_spec/bindings/vehicle_spec_binding.dart';
import '../modules/vehicle_spec/views/vehicle_spec_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
      // // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.VEHICLE_REGISTRATION,
      page: () => const VehicleRegistrationView(),
      binding: VehicleRegistrationBinding(),
      // // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.VEHICLE_SPEC,
      page: () => const VehicleSpecView(),
      binding: VehicleSpecBinding(),
      // // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.VEHICLE_SPEC_FORM,
      page: () => const FinancingFormView(),
      binding: FinancingFormBindings(),
      // // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.FORM_CREATED,
      page: () => const FormCreatedView(),
      binding: FormCreatedBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.FINANCING,
      page: () => const FinancingView(),
      binding: FinancingBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FINANCING,
      page: () => const DetailFinancingView(),
      binding: DetailFinancingBinding(),
    ),
  ];
}
