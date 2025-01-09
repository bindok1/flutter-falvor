import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DocumentSearchDelegate extends SearchDelegate {
  // Customize search field
  @override
  String get searchFieldLabel => 'Telusuri di dokumen';

  @override
  TextStyle? get searchFieldStyle => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppTheme.textFieldHintColor,
  );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
    );
  }

  // Leading icon (back button)
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => close(context, null),
    );
  }

  // Actions (clear button)
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear, color: Colors.black),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
    ];
  }

  // Search results
  @override
  Widget buildResults(BuildContext context) {
   
    final results = ['Result 1', 'Result 2', 'Result 3']
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
           
            close(context, results[index]);
          },
        );
      },
    );
  }

  // Search suggestions
  @override
  Widget buildSuggestions(BuildContext context) {
   
    final suggestions = ['Suggestion 1', 'Suggestion 2', 'Recent search 1']
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.history),
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}