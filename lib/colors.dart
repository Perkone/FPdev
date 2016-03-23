library semplex.client.ext1.colors;

String RGBColorBrightness(String CSSColorHex, [int brightness = 100]) {
  int red = int.parse(CSSColorHex.substring(1, 3), radix: 16);
  int green = int.parse(CSSColorHex.substring(3, 5), radix: 16);
  int blue = int.parse(CSSColorHex.substring(5, 7), radix: 16);

  red = (red * brightness / 100).toInt();
  green = (green * brightness / 100).toInt();
  blue = (blue * brightness / 100).toInt();

  String redStr = red.toRadixString(16);
  if (redStr.length == 1)
    redStr = '0' + redStr;

  String greenStr = green.toRadixString(16);
  if (greenStr.length == 1)
    greenStr = '0' + greenStr;

  String blueStr = blue.toRadixString(16);
  if (blueStr.length == 1)
    blueStr = '0' + blueStr;

  return '#' + redStr + greenStr + blueStr;
}