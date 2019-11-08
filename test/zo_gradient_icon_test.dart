import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:zo_gradient_icon/zo_gradient_icon.dart';

void main() {
  test('Test for ZOGradientIcon UI', () {
    final zogradienticon = ZOGradientIcon(Icons.phone_iphone, 30.0, [
      Color(0xFF1565C0),
      Color(0xFF0D47A1),
      Color(0xFF263238),
      Color(0xFF212121),
    ]);
    expect(zogradienticon.icon, Icons.phone_iphone);
    expect(zogradienticon.size, 30.0);
    expect(zogradienticon.gradientColors, [
      Color(0xFF1565C0),
      Color(0xFF0D47A1),
      Color(0xFF263238),
      Color(0xFF212121),
    ]);
  });
}
