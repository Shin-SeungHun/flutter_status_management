import 'package:flutter/material.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/data/repository/image_item_repository.dart';

class MainViewModel extends ChangeNotifier {

  final ImageItemRepository repository;
  final TextEditingController textEditingController = TextEditingController();

  MainViewModel({
    required this.repository,
  });

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  List<ImageModel> imageList = [];

  bool isLoading = false;

  Future<void> searchImage({required String query}) async {
    isLoading = true;
    notifyListeners();

    imageList = await repository.getImageItems(query: query);
    isLoading = false;
    notifyListeners();
  }


}
