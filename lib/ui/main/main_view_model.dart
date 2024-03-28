import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/data/repository/image_item_repository.dart';

class MainViewModel extends StateNotifier<List<ImageModel>> {
  final ImageItemRepository repository;
  final TextEditingController textEditingController = TextEditingController();

  MainViewModel({
    required this.repository,
  }) : super([]);

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  bool isLoading = false;

  Future<void> searchImage({required String query}) async {
    isLoading = true;
    state = []; // Clear existing state

    try {
      state = await repository.getImageItems(query: query);
    } catch (e) {
      // 예외 처리
      print('Error while fetching images: $e');
    } finally {
      isLoading = false; // 로딩 상태 업데이트
    }
  }
}
