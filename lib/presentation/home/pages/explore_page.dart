import 'package:apple_store/core/constants/variables.dart';
import 'package:apple_store/data/models/responses/category_response_model.dart';
import 'package:apple_store/data/models/responses/product_response_model.dart';
import 'package:apple_store/presentation/address/bloc/address/address_bloc.dart';
import 'package:apple_store/presentation/home/bloc/category/category_bloc.dart';
import 'package:apple_store/presentation/home/bloc/product/product_bloc.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  void initState() {
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    context.read<ProductBloc>().add(const ProductEvent.getProducts());
    context.read<AddressBloc>().add(const AddressEvent.getAddresses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return DropdownSearch<Category>(
                    items: state.maybeWhen(
                      loaded: (categories) => categories,
                      orElse: () => [],
                    ),
                    itemAsString: (Category category) => category.name!,
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Menu mode",
                        hintText: "country in menu mode",
                      ),
                    ),
                    onChanged: (Category? category) {
                      if (category != null) {
                        context.read<ProductBloc>().add(
                              ProductEvent.getProducts(
                                  categoryId: '${category.id}'),
                            );
                      }
                    },
                    popupProps: PopupProps<Category>.bottomSheet(
                        showSearchBox: true,
                        loadingBuilder: (context, searchEntry) {
                          return const CircularProgressIndicator();
                        },
                        itemBuilder: (BuildContext context, Category category,
                            bool isSelected) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  '${Variables.baseImageUrl}/categories/${category.image!}'),
                            ),
                            title: Text(category.name!),
                            subtitle: Text(category.description!),
                            selected: isSelected,
                          );
                        },
                        searchDelay: const Duration(seconds: 2)),
                  );
                },
              ),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return DropdownSearch<Product>(
                    items: state.maybeWhen(
                      loaded: (products) => products,
                      orElse: () => [],
                    ),
                    itemAsString: (Product product) => product.name!,
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Menu mode",
                        hintText: "country in menu mode",
                      ),
                    ),
                    onChanged: (Product? product) {
                      if (product != null) {
                        print(product.name);
                      }
                    },
                    popupProps: PopupProps<Product>.bottomSheet(
                      itemBuilder: (BuildContext context, Product product,
                          bool isSelected) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                '${Variables.baseImageUrl}/products/${product.image!}'),
                          ),
                          title: Text(product.name!),
                          subtitle: Text(product.description!),
                          selected: isSelected,
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 50.0),
              BlocBuilder<AddressBloc, AddressState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const CircularProgressIndicator(),
                    loaded: (addresses) => Text(addresses.length.toString()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
