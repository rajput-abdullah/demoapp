  import 'package:flutter/cupertino.dart';
import 'sizes.dart';

AppSizes ? sizes;

bool _isInitialized = false;

void initializeResources({required BuildContext context}) {
  AppSizes().initializeSize(context);
  if (_isInitialized) {
    /**
     * this is to prevent
     * multiple initialization calls.
     */
    return;
  }

  sizes = AppSizes()..initializeSize(context);
}

double getWidthRatio() => sizes?.widthRatio ?? 1;

double getHeightRatio() => sizes?.heightRatio ?? 1;

double getFontRatio() => sizes?.fontRatio ?? 1.0;
