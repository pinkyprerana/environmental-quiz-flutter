import 'package:flutter/material.dart';

class GiftingCompanyWidget extends StatelessWidget {
  const GiftingCompanyWidget({
    super.key,
    required this.asset,
    required this.requiredPoints,
    this.assetHeight,
    this.assetWidth,
  });

  final String asset;
  final String requiredPoints;
  final double? assetHeight;
  final double? assetWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: assetHeight,
          width: assetWidth,
          child: Image.asset(asset),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFEAFDDE),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Text(
            requiredPoints,
            style: const TextStyle(
              fontSize: 10,
              color: Color(0xFF32660F),
            ),
          ),
        ),
      ],
    );
  }
}
