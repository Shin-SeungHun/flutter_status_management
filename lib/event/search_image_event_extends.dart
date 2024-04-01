import 'package:flutter_status_management/event/search_image_event.dart';

class SearchImageEventExtends extends SearchImageEvent {
  final String query;

  SearchImageEventExtends({required this.query});

  @override
  List<Object?> get props => [query];
}
