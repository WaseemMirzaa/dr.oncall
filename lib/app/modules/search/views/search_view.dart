import 'package:dr_on_call/app/modules/search/views/mini_widgets/search_header.dart';
import 'package:dr_on_call/app/modules/search/views/mini_widgets/search_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/background_container.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 20, left: 20),
              child: SearchHeader(),
            ),
            SizedBox(
              height: 50,
            ),
            SearchList(),
          ],
        ),
      )),
    );
  }
}
