

import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/domain/entities/Service_category.dart';

abstract class ServiceRepository{
    Future<List<Service>?> getServices({ required int page, required int size});
    Future<List<Service>?> getServicesByCategory({ required int categoryId, required int page, required int size});
    Future<List<ServiceCategory>?> getServiceCategories({ required int page, required int size});
}