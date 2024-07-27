import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.options});
  final List<String> options;
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _filteredOptions = [];

  @override
  void initState() {
    super.initState();
    _filteredOptions = List.from(widget.options);
  }

  void _filterOptions(String query) {
    setState(() {
      _filteredOptions = widget.options
          .where((option) => option.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: TextField(
        cursorColor: Colors.black,
          controller: _searchController,
          autofocus: true, // Automatically focus and open the keyboard
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
          onChanged: _filterOptions,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),),
      
      body: ListView.builder(
        itemCount: _filteredOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_filteredOptions[index]),
            onTap: () {
              Navigator.pop(context, _filteredOptions[index]); // Pass back selected item
            },
          );
        },
      ),
    );
  }
}
