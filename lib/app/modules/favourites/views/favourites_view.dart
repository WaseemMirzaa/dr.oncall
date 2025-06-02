import 'package:dr_on_call/app/modules/favourites/views/mini_widgets/favourites_header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/background_container.dart';
import '../../clinical_details/views/mini_widgets/clinical_header.dart';
import '../../clinical_presentations/views/mini_widgets/clinical_list.dart';
import '../controllers/favourites_controller.dart';
import 'mini_widgets/favorites_list.dart';

class FavouritesView extends GetView<FavouritesController> {
  const FavouritesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5),
              child: FavouritesHeader(),
            ),
            SizedBox(
              height: 50,
            ),
            FavoritesList(),
          ],
        ),
      )),
    );
  }
}
