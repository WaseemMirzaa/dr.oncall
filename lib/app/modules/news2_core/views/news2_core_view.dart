import 'package:dr_on_call/app/modules/news2_core/views/mini_widgets/news2_header.dart';
import 'package:dr_on_call/app/modules/news2_core/views/mini_widgets/news2_list.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/background_container.dart';
import '../controllers/news2_core_controller.dart';

class News2CoreView extends GetView<News2CoreController> {
  const News2CoreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: News2Header(),
              ),
              SizedBox(
                height: 50,
              ),
              News2List(),
            ],
          ),
        ),
      ),
    );
  }
}
