import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clone_blinkit/models/product_model.dart';
import 'package:clone_blinkit/constants/dummy_data/dummy_data.dart';

class SearchCubit extends Cubit<List<ProductModel>> {
  final List<ProductModel> allProducts;

  SearchCubit()
    : allProducts = DummyData().dummyProducts,
      super(DummyData().dummyProducts);

  void search(String query) {
    if (query.isEmpty) {
      emit(allProducts);
    } else {
      final results =
          allProducts
              .where(
                (product) =>
                    product.name.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
      emit(results);
    }
  }
}
