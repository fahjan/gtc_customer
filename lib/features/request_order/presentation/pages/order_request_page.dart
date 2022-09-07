import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:gtc_customer/features/request_order/presentation/controller/order_request_controller.dart';

class OrderRequestPage extends GetView<OrderRequestController> {
  const OrderRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controller.getListOfData(),
        builder: (context, snapshot) => controller.obx(
          (state) {
            List<DataEntity> listOfDataEntity = (state as List<DataEntity>);
            return ListView.builder(
              prototypeItem: const SizedBox(
                height: 200,
              ),
              itemCount: listOfDataEntity.length,
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
                        Image.network(listOfDataEntity[index].logo),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            listOfDataEntity[index].restaurantName,
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
            );
          },
          onError: (error) {
            Get.snackbar('Error', error ?? '');

            return Center(
              child: Text(error ?? ''),
            );
          },
          onLoading: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
