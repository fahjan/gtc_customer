import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors_app.dart';
import '../../../../core/constants/sizes_app.dart';
import '../../domain/entities/data_entity.dart';
import '../controller/order_request_controller.dart';

class OrderRequestPage extends GetView<OrderRequestController> {
  const OrderRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.listOfDataEntity.isEmpty &&
            controller.isLoading.isTrue) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.listOfDataEntity.isEmpty &&
            controller.isLoading.isFalse) {
          return Center(  
            child: Text(controller.message),
          );
        } else if (controller.listOfDataEntity.isNotEmpty) {
          return RefreshIndicator(
            onRefresh: controller.getListOfData,
            child: ListView.builder(
              prototypeItem: const SizedBox(
                height: 200,
              ),
              itemCount: controller.listOfDataEntity.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // this not work
                    //Get.snackbar('click in card', 'card ').show();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('click in card'),
                      ),
                    );
                    // TODO : make Order
                    // controller.makeOrder();
                  },
                  child: Card(
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(controller.listOfDataEntity[index].logo),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            controller.listOfDataEntity[index].restaurantName,
                            style: TextStyle(
                              color: ColorsApp.primary,
                              fontSize: SizesApp.sp20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return const Center(child: Text('Unknow data'));
        }
      }),
    );
  }
}
