import 'package:flutter/material.dart';
import '../components/color.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Stack(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Recherche",
              border: OutlineInputBorder(),
            ),
          ),
          Positioned(
            right: 12,
            top: 4,
            child: Container(
              height: 30,
              width: 30,
              // color: vert,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: vert,
                ),
                tooltip: 'Rechercher un contact',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
