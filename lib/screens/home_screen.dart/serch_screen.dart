import 'package:clone_blinkit/screens/logic/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clone_blinkit/models/product_model.dart';

class ProductSearchPage extends StatelessWidget {
  const ProductSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Search Products")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: "Search...",
                border: OutlineInputBorder(),
              ),
              onChanged: (query) => context.read<SearchCubit>().search(query),
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchCubit, List<ProductModel>>(
              builder: (context, searchResults) {
                return ListView.builder(
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    final product = searchResults[index];
                    return ListTile(
                      leading: Image.network(product.imageUrl, width: 60),
                      title: Text(product.name),
                      subtitle: Text("₹${product.price}"),
                      trailing: Text("${product.discount} off"),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
