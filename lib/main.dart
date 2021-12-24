import 'package:flutter/material.dart';
import 'package:robo_insure/Controller/home_controller.dart';
import 'package:robo_insure/components/cart.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:robo_insure/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:robo_insure/model/market_place_model.dart';
import 'package:robo_insure/provider/cart.dart';
import 'package:robo_insure/provider/markerplace.dart';
import 'package:robo_insure/screens/Investment_plan_view.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/appliance_insurance_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/gadget_insure_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/good_in_transit_insurance_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/health_insurance_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/home_insurance_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/life_insurance_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/motorcycle_insurance_info.dart';
import 'package:robo_insure/screens/Motorcycle_insurance/travel_insurance_info.dart';
import 'package:robo_insure/screens/Vehicle_insurance/Vehicle_Third_party.dart';
import 'package:robo_insure/screens/marketplace.dart';
import 'package:robo_insure/screens/protection_plans.dart';
import 'package:robo_insure/screens/savings_plans.dart';
import 'package:robo_insure/screens/services.dart';
import 'package:provider/provider.dart';
import 'package:robo_insure/screens/Vehicle_insurance/vehicle_insurance_info.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<HomeController>(
          create: (_) => HomeController(),
        ),
        ChangeNotifierProvider.value(
          value: MarketPlaceModels(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 747),
      builder: () => MaterialApp(
        title: 'Robo Insure',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            canvasColor: backgroundColor,
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (state) => const Color(0xFF2A87FF)))),
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Poppins',
            brightness: Brightness.dark),
        initialRoute: MainScreen.route,
        home: MainScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case MainScreen.route:
              return PageTransition(
                  child: MainScreen(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeft);
            case ProtectionPlans.route:
              return PageTransition(
                  child: ProtectionPlans(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeft);
            case SavingsPlans.route:
              return PageTransition(
                  child: SavingsPlans(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeft);
            case InvestmentPlanView.route:
              return PageTransition(
                  child: InvestmentPlanView(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeft);
            case Services.route:
              return PageTransition(
                  child: Services(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeft);
            case MarketPlace.route:
              return PageTransition(
                  child: MarketPlace(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeft);

            // case MarketsCarts.route:
            //   return PageTransition(
            //       child: MarketsCart(),
            //       alignment: Alignment.center,
            //       type: PageTransitionType.rightToLeft);
            case VehicleInsuranceForm.route:
              return PageTransition(
                  child: VehicleInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case VehicleInsuranceThirdParty.route:
              return PageTransition(
                  child: VehicleInsuranceThirdParty(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case MotorcycleInsuranceForm.route:
              return PageTransition(
                  child: MotorcycleInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case HomeInsuranceForm.route:
              return PageTransition(
                  child: HomeInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case ApplianceInsuranceForm.route:
              return PageTransition(
                  child: ApplianceInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case GadgetInsuranceForm.route:
              return PageTransition(
                  child: GadgetInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case GoodsInTransitInsuranceForm.route:
              return PageTransition(
                  child: GoodsInTransitInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);

            case LifeInsuranceForm.route:
              return PageTransition(
                  child: LifeInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case TravelInsuranceForm.route:
              return PageTransition(
                  child: TravelInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
            case HealthInsuranceForm.route:
              return PageTransition(
                  child: HealthInsuranceForm(),
                  alignment: Alignment.center,
                  type: PageTransitionType.rightToLeftWithFade);
          }
        },
      ),
    );
  }
}
