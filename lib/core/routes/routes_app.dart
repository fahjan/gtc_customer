import 'package:get/get.dart';
import 'package:gtc_customer/features/request_order/presentation/bindings/order_request_binding.dart';
import 'package:gtc_customer/features/request_order/presentation/pages/order_request_page.dart';
import 'package:gtc_customer/home_page.dart';

class RoutesApp {
  static const String initialPage = '/';
  static const String orderRequestPage = '/orderRequestPage';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: initialPage,
        page: () => const HomePage(),
      ),
      GetPage(
        name: orderRequestPage,
        page: () => const OrderRequestPage(),
        binding: OrderRequestPageBinding()
      ),
    ];
  }
}
