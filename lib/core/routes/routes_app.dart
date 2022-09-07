import 'package:get/get.dart';

import '../../features/request_order/presentation/bindings/order_request_binding.dart';
import '../../features/request_order/presentation/pages/order_request_page.dart';
import '../../home_page.dart';

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
