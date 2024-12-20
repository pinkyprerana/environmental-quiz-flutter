import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../infrastructure/ad_helper.dart';
import '../styles/app_colors.dart';

class GoogleNativeAd extends ConsumerStatefulWidget {
  const GoogleNativeAd({super.key});

  @override
  _GoogleNativeAdState createState() => _GoogleNativeAdState();
}

class _GoogleNativeAdState extends ConsumerState<GoogleNativeAd> {
  NativeAd? _nativeAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    loadNativeAd();
  }

  @override
  void dispose() {
    _nativeAd?.dispose();
    super.dispose();
  }

  void loadNativeAd() {
    final nativeAdOptions = NativeAdOptions(
      mediaAspectRatio: MediaAspectRatio.landscape,
      requestCustomMuteThisAd: true,
      shouldRequestMultipleImages: false,
      shouldReturnUrlsForImageAssets: false,
    );

    _nativeAd = NativeAd(
      adUnitId: AdHelper.nativeAdUnitId,
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.medium,
        mainBackgroundColor: Colors.white12,
        callToActionTextStyle: NativeTemplateTextStyle(size: 16.0,),
      ),

      request: const AdRequest(),
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _nativeAd = ad as NativeAd;
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$NativeAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$NativeAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$NativeAd onAdClosed.'),
      ),
      nativeAdOptions: nativeAdOptions,
    )..load();
  }


  @override
  Widget build(BuildContext context) {
    return _isAdLoaded
          ? AdWidget(ad: _nativeAd!,)
        : const Center(
          child: CircularProgressIndicator(color: AppColors.colorPrimary),
    );
  }
}
