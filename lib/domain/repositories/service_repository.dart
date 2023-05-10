

import 'package:nave_app/domain/entities/Merchant.dart';
import 'package:nave_app/domain/entities/Merchant_category.dart';

abstract class ServiceRepository{
    Future<List<Merchant>?> getServices({ required int page, required int size});
    Future<List<Merchant>?> getServicesByCategory({ required int categoryId, required int page, required int size});
    Future<List<MerchantCategory>?> getServiceCategories({ required int page, required int size});
}