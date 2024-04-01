import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/data/repository/image_item_repository.dart';
import 'package:flutter_status_management/event/search_image_event.dart';
import 'package:flutter_status_management/event/search_image_event_extends.dart';

class MainViewModel extends Bloc<SearchImageEvent, List<ImageModel>> {
  final ImageItemRepository repository;

  // final TextEditingController textEditingController = TextEditingController();

  MainViewModel({required this.repository}) : super([]) {
    on<SearchImageEventExtends>((event, emit) async {
      emit(await _searchImage(event.query));
    });
  }

  Future<List<ImageModel>> _searchImage(String query) async {
    try {
      return await repository.getImageItems(query: query);
    } catch (e) {
      // 에러 처리
      return [];
    }
  }
}
