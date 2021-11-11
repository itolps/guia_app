import 'package:guia_app/core/theme/app_images.dart';
import 'package:guia_app/models/category.dart';
import 'package:guia_app/models/service.dart';

class HomeController {
  List<Category> getCategories() {
    return [
      Category(name: 'Turismo', picture: AppImages.group1),
      Category(name: 'Esporte', picture: AppImages.group2),
      Category(name: 'Beleza', picture: AppImages.group3),
      Category(name: 'Educação', picture: AppImages.group4),
      Category(name: 'Gastronomia', picture: AppImages.group5),
      Category(name: 'Tecnologia', picture: AppImages.group6),
    ];
  }

  List<Service> getServices() {
    return [
      Service(
          name: 'Vôo Livre', category: "Turismo", photoUrl: AppImages.banner1),
      Service(
          name: 'Vôo Livre', category: "Turismo", photoUrl: AppImages.banner1),
      Service(
          name: 'Vôo Livre', category: "Turismo", photoUrl: AppImages.banner1),
      Service(
          name: 'Vôo Livre', category: "Turismo", photoUrl: AppImages.banner1),
    ];
  }
}
