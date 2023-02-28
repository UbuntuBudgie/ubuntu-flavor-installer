import 'package:ubuntu_desktop_installer/installer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yaru/yaru.dart';

import 'slides.dart';

Future<void> main(List<String> args) {
  return runInstallerApp(
    args,
    flavor: FlavorData(
      name: 'Ubuntu Budgie',
      theme: yaruLight,
      darkTheme: yaruDark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    ),
    slides: [
      welcomeSlide,
      desktopSlide,
      browseSlide,
      officeSlide,
      mediaSlide,
      photosSlide,
      softwareSlide,
      gethelpSlide,
    ],
  );
}
