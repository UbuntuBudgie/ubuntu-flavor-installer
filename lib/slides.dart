import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_desktop_installer/installer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'l10n.dart';

const headerStyle = TextStyle(color: Colors.white, fontSize: 32);
const bodyStyle = TextStyle(color: Colors.white, fontSize: 18);

final welcomeSlide = Slide(
  title: (context) => Text(context.l10n.welcomeSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(40),
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.welcomeSlideHeader, style: headerStyle),
              const SizedBox(height: 20),
              Expanded(
                child: Text(context.l10n.welcomeSlideBody, style: bodyStyle),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);

final desktopSlide = Slide(
  title: (context) => Text(context.l10n.desktopSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.desktopSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/installation_slides/desktop.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

final browseSlide = Slide(
  title: (context) => Text(context.l10n.browseSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.browseSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/installation_slides/browse.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

final officeSlide = Slide(
  title: (context) => Text(context.l10n.officeSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.officeSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/installation_slides/office.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

final mediaSlide = Slide(
  title: (context) => Text(context.l10n.mediaSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.mediaSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/installation_slides/media.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

final photosSlide = Slide(
  title: (context) => Text(context.l10n.photosSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.photosSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/installation_slides/photos.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

final softwareSlide = Slide(
  title: (context) => Text(context.l10n.softwareSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Padding(
        padding: const EdgeInsets.all(60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  context.l10n.softwareSlideBody,
                  style: bodyStyle,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset(1, 0.75),
                child: SizedBox(
                  width: 448,
                  height: 304,
                  child: Image.asset('assets/installation_slides/software.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);


final gethelpSlide = Slide(
  title: (context) => Text(context.l10n.gethelpSlideTitle),
  body: (context) => Stack(
    children: [
      Image.asset('assets/installation_slides/ub_background.png'),
      Center(
        child: Html(
          shrinkWrap: true,
          data: context.l10n.gethelpSlideBody,
          style: {
            'body': Style(
              color: Colors.white,
              fontSize: FontSize(24),
            ),
          },
          onAnchorTap: (url, _, __, ___) => launchUrlString(url!),
        ),
      ),
    ],
  ),
);
