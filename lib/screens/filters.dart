import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:meals_app/providers/filters_provider.dart";

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  String filtersName(String filterName) {

    return filterName[0].toUpperCase()+filterName.substring(1);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters")),
      body: Column(
        children: Filter.values
            .map(
              (filter) => SwitchListTile(
                title: Text(filtersName(filter.name)),
                subtitle: Text("Only include ${filtersName(filter.name)} meals."),
                value: activeFilters[filter]!,
                onChanged: (kontrolet) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(filter, kontrolet);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
