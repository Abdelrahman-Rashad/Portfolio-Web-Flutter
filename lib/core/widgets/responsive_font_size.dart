double ResponsiveFontSize(double baseFont, double width) {
  // get scale factor
  double breakPointPlateform = getBreakePointPlateform(width);
  double scaleFactor = width / breakPointPlateform;

  // responsive font size
  double ResponsiveFontSize = baseFont * scaleFactor;

  // (min,max) font size
  double lowerLimit = baseFont * 0.8;
  double upperLimit = baseFont * 1.2;
  return ResponsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getBreakePointPlateform(double width) {
  if (width < 600) {
    return 400;
  } else if (width < 900) {
    return 700;
  } else {
    return 1000;
  }
}
