import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:logger/logger.dart';
import 'package:routine_app/core/services/get_env.dart';

final adServiceProvider = Provider((ref) => AdService());

class AdService {
  AdService._internal();
  static final AdService _instance = AdService._internal();

  factory AdService() => _instance;

  InterstitialAd? _interstitialAd;

  Future<void> showInterstitial() async {
    await FirebaseAnalytics.instance.logAdImpression();
    _interstitialAd?.show();
  }

  Future<String> get adUnitId =>
      Platform.isAndroid
          ? GetEnv().admobAndroidUnitId
          : GetEnv().admobIosUnitId;

  void adLoad({required VoidCallback onFinish}) {
    adUnitId.then(
      (value) => InterstitialAd.load(
        adUnitId: value,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
              onAdShowedFullScreenContent:
                  (InterstitialAd ad) =>
                      Logger().d('$ad onAdShowedFullScreenContent.'),
              onAdDismissedFullScreenContent: (InterstitialAd ad) {
                Logger().d('$ad onAdDismissedFullScreenContent.');
                ad.dispose();
                onFinish();
              },
              onAdFailedToShowFullScreenContent: (
                InterstitialAd ad,
                AdError error,
              ) {
                Logger().d('$ad onAdFailedToShowFullScreenContent: $error');
                ad.dispose();
              },
              onAdImpression:
                  (InterstitialAd ad) => Logger().d('$ad impression occurred.'),
            );
            _interstitialAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            Logger().e("InterstitialAd failed to load: $error");
          },
        ),
      ),
    );
  }
}
