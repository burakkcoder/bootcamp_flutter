import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild,required this.onPress}); // bu bölümü color u custom yapabilmek için yaptım. ayrıca kod tekrarına düşmemek için refactorledim aşağıdaki özellikleri isine reusable dedim.
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress; // Function normalde ama flutter voidcallback yapmamı istedi.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}