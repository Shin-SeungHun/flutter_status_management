import 'package:flutter/material.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/data/repository/image_item_repository.dart';
import 'package:get/get.dart';

class MainViewModel extends GetxController {
  final ImageItemRepository repository;
  final TextEditingController textEditingController = TextEditingController();

  MainViewModel({
    required this.repository,
  });

  @override
  void onClose() {
    super.onClose();
    textEditingController.dispose();
  }

  List<ImageModel> imageList = [];

  RxBool isLoading = false.obs;

  Future<void> searchImage({required String query}) async {
    isLoading.value = true;

    try {
      imageList = await repository.getImageItems(query: query);
      update();
    } finally {
      isLoading.value = false;
      update();
    }
  }
}
