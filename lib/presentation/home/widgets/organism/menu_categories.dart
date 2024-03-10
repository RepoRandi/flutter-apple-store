import 'package:apple_store/presentation/home/bloc/product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:apple_store/presentation/home/bloc/category/category_bloc.dart';

import '../category_button.dart';

class MenuCategories extends StatefulWidget {
  const MenuCategories({super.key});

  @override
  State<MenuCategories> createState() => _MenuCategoriesState();
}

class _MenuCategoriesState extends State<MenuCategories> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CircularProgressIndicator(),
          loaded: (categories) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.asMap().entries.map(
                (entry) {
                  final int index = entry.key;
                  final category = entry.value;
                  return CategoryButton(
                    imagePath: category.image ?? '',
                    label: category.name ?? '',
                    isActive: selected == index,
                    onPressed: () {
                      context.read<ProductBloc>().add(ProductEvent.getProducts(
                          categoryId: category.id.toString()));

                      setState(() {
                        selected = index;
                      });
                    },
                  );
                },
              ).toList(),
            ),
          ),
          error: (message) => Center(child: Text(message)),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
