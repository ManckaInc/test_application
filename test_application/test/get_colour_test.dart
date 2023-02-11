import 'package:flutter_test/flutter_test.dart';
import 'package:test_application/services/get_colors.dart';

void main() {
  test('get random colors', () {
    // Arrange & Act
    final GetColors getColors = GetColors();

    //assigning two different colors to variables
    final colorOne = getColors.getRNDColor();
    final colorTwo = getColors.getRNDColor();

    // Assert
    expect(colorOne, isNot(equals(colorTwo)));
  });
}
