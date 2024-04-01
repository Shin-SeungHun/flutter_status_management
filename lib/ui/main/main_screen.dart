import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/event/search_image_event_extends.dart';
import 'package:flutter_status_management/ui/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text('image searching app'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                onChanged: (query) {
                  // context.read<MainViewModel>().add(SearchImageEvent(query: query));
                },
                decoration: InputDecoration(
                  labelText: '검색',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.cyan,
                    ),
                    onPressed: () {
                      context.read<MainViewModel>().add(SearchImageEventExtends(query: textEditingController.text));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: BlocBuilder<MainViewModel, List<ImageModel>>(builder: (context, imageList) {
                  return GridView.builder(
                      itemCount: imageList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, crossAxisSpacing: 32, mainAxisSpacing: 32),
                      itemBuilder: (context, index) {
                        final ImageModel imageItem = imageList[index];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            imageItem.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        );
                      });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
