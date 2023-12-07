import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/data/models/address/district.dart';
import 'package:lead_management_app/app/data/models/address/province.dart';
import 'package:lead_management_app/app/data/models/address/subdistrict.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/data/models/seller/address.dart';
import 'package:lead_management_app/app/data/models/seller/seller.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';
import 'package:lead_management_app/app/utils/global_bindings.dart';
import 'package:path_provider/path_provider.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(directory.path);
  Hive.registerAdapter(SellerAdapter());
  Hive.registerAdapter(AddressAdapter());
  Hive.registerAdapter(ProvinceAdapter());
  Hive.registerAdapter(DistrictAdapter());
  Hive.registerAdapter(SubdistrictAdapter());
  Hive.registerAdapter(FinancingAdapter());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      color: kPrimaryColor,
      initialBinding: GlobalBindings(),
      localizationsDelegates: const [
        FormBuilderLocalizationsDelegate(),
      ],
      theme: ThemeData(
        appBarTheme: kAppbarTheme,
        iconTheme: kIconTheme,
        primaryColor: kPrimaryColor,
        primaryColorLight: kPrimaryColor,
        floatingActionButtonTheme: kFloatingActionButton,
        inputDecorationTheme: kInputDecorationTheme,
        textSelectionTheme: kTextSelectionTheme,
        scaffoldBackgroundColor: kBgWhite,
        tabBarTheme: kTabbarTheme,
      ),
    ),
  );
}
