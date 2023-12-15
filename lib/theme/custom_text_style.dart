import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAmiriQuranColoredGray60001 =>
      theme.textTheme.bodyLarge!.amiriQuranColored.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeAmiriQuranColoredOnPrimary =>
      theme.textTheme.bodyLarge!.amiriQuranColored.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get bodyLargeAmiriQuranColoredPrimaryContainer =>
      theme.textTheme.bodyLarge!.amiriQuranColored.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeComfortaaOnPrimary =>
      theme.textTheme.bodyLarge!.comfortaa.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto;
  static get bodyMediumAmiriQuranColored =>
      theme.textTheme.bodyMedium!.amiriQuranColored;
  static get bodyMediumAmiriQuranColoredBlack900 =>
      theme.textTheme.bodyMedium!.amiriQuranColored.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumAmiriQuranColoredGray60001 =>
      theme.textTheme.bodyMedium!.amiriQuranColored.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumAmiriQuranColoredGray6000114 =>
      theme.textTheme.bodyMedium!.amiriQuranColored.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumAmiriQuranColoredPrimaryContainer =>
      theme.textTheme.bodyMedium!.amiriQuranColored.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumOutfitBlack900 =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoBlue400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blue400,
        fontSize: 14.fSize,
      );
  static get bodySmallAmiriQuranColoredDeeporangeA200 =>
      theme.textTheme.bodySmall!.amiriQuranColored.copyWith(
        color: appTheme.deepOrangeA200,
        fontSize: 8.fSize,
      );
  static get bodySmallAmiriQuranColoredGray60001 =>
      theme.textTheme.bodySmall!.amiriQuranColored.copyWith(
        color: appTheme.gray60001,
        fontSize: 10.fSize,
      );
  static get bodySmallAmiriQuranColoredOnPrimary =>
      theme.textTheme.bodySmall!.amiriQuranColored.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallComfortaaOnPrimary =>
      theme.textTheme.bodySmall!.comfortaa.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallRobotoAmber300 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.amber300,
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoPrimaryContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Headline text style
  static get headlineSmallAmiriQuranColoredOnPrimary =>
      theme.textTheme.headlineSmall!.amiriQuranColored.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallOutfit =>
      theme.textTheme.headlineSmall!.outfit.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallOutfitBold =>
      theme.textTheme.headlineSmall!.outfit.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOutfitPrimaryContainer =>
      theme.textTheme.headlineSmall!.outfit.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeOutfitDeeporange300 =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.deepOrange300,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOutfitOnError =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  // Roboto text style
  static get robotoBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  static get robotoPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  // Title text style
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoGray500 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoPrimaryContainer =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get gamjaFlower {
    return copyWith(
      fontFamily: 'Gamja Flower',
    );
  }

  TextStyle get comfortaa {
    return copyWith(
      fontFamily: 'Comfortaa',
    );
  }

  TextStyle get amiriQuranColored {
    return copyWith(
      fontFamily: 'Amiri Quran Colored',
    );
  }
}
