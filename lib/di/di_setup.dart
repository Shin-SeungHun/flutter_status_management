import 'package:flutter_status_management/data/data_source/image_api.dart';
import 'package:flutter_status_management/data/repository/image_item_repository.dart';
import 'package:flutter_status_management/data/repository/image_item_repository_impl.dart';
import 'package:flutter_status_management/ui/main/main_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageApi>(ImageApi());

  getIt.registerSingleton<ImageItemRepository>(ImageItemRepositoryImpl(api: getIt<ImageApi>()));

  getIt.registerFactory<MainViewModel>(() => MainViewModel(repository: getIt<ImageItemRepository>()));
}
