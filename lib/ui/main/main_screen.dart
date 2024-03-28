import 'package:flutter/material.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/ui/main/main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.viewModel});
  final MainViewModel viewModel;

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
                controller: viewModel.textEditingController,
                onChanged: (query) {
                  viewModel.searchImage(query: query);
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
                      viewModel.searchImage(query: viewModel.textEditingController.text);
                      print(viewModel.imageList);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                    itemCount: viewModel.imageList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 32, mainAxisSpacing: 32),
                    itemBuilder: (context, index) {
                      final ImageModel imageItem = viewModel.imageList[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          imageItem.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
