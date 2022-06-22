import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';
import 'package:private_fit/presentation/splash/splash_widgets/app_assets.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/navigation_indicator.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash3d_widget.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash_3d_model_controller.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash_appbar.dart';
import 'package:private_fit/shared/images.dart';
// import 'package:private_fit/shared/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _page0TopTitleController;
  late AnimationController _page0BottomTitleController;
  late AnimationController _page1TopTitleController;
  late AnimationController _page1BottomTitleController;
  late AnimationController _page2TopTitleController;
  late AnimationController _page2BottomTitleController;
  late Splash3dModelController _splash3dModelController;

  int _pageIndex = 0;

  @override
  void initState() {
    const duration = Duration(milliseconds: 400);

    _page0TopTitleController =
        AnimationController(vsync: this, duration: duration, value: 1);
    _page0BottomTitleController =
        AnimationController(vsync: this, duration: duration, value: 1);
    _page1TopTitleController =
        AnimationController(vsync: this, duration: duration, value: 0);
    _page1BottomTitleController =
        AnimationController(vsync: this, duration: duration, value: 0);
    _page2TopTitleController =
        AnimationController(vsync: this, duration: duration, value: 0);
    _page2BottomTitleController =
        AnimationController(vsync: this, duration: duration, value: 0);

    _splash3dModelController = Splash3dModelController();

    Listenable.merge([
      _page0TopTitleController,
      _page0BottomTitleController,
      _page1TopTitleController,
      _page1BottomTitleController,
      _page2TopTitleController,
      _page2BottomTitleController,
      _splash3dModelController,
    ]).addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _page0TopTitleController.dispose();
    _page0BottomTitleController.dispose();
    _page1TopTitleController.dispose();
    _page1BottomTitleController.dispose();
    _page2TopTitleController.dispose();
    _page2BottomTitleController.dispose();
    _splash3dModelController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    if (!_splash3dModelController.initialized) {
      precacheImage(
        AssetImage(
          AllImages().running,
        ),
        context,
      );
      precacheImage(
        AssetImage(
          AllImages().fitgirl01,
        ),
        context,
      );
      precacheImage(
        AssetImage(
          AllImages().fitman01,
        ),
        context,
      );
      precacheImage(
        const AssetImage(
          AppAssets.noise,
        ),
        context,
      );

      _splash3dModelController.init(context);
    }
    _splash3dModelController.setView(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: _pageIndex == 0
          ? const Color(0xFF0DD479) //const Color(0xFF0DD479),
          : _pageIndex == 1
              ? const Color(0xFFECA6C8)
              : const Color(0xFFFFD500),
      body: Stack(
        children: [
          GestureDetector(
            onTapUp: _handleTap,
            child: _buildPages(),
          ),
          const Positioned(
            top: 20,
            right: 0,
            child: SplashAppBar(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: OnboardNavigationIndicator(
                pageIndex: _pageIndex,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: TextButton(
                onPressed: () => AutoRouter.of(context).replace(
                  const OnBoardingPageRoute(),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 19, 109, 121),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    l10n.on_board_atsign,
                    style: const TextStyle(
                      letterSpacing: 1.1,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPages() {
    final result = NotificationListener<ScrollUpdateNotification>(
      onNotification: _handleScroll,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: _handlePageChange,
        children: [
          _buildPageForIndex(0),
          _buildPageForIndex(1),
          _buildPageForIndex(2),
        ],
      ),
    );
    return result;
  }

  Widget _buildPageForIndex(int index) {
    Widget? result;
    final l10n = context.l10n;
    switch (index) {
      case 0:
        result = Splash3dWidget(
          bottomTitle: l10n.splash01,
          backgroundColor: const Color(0xFF0DD479),
          image: AssetImage(
            AllImages().running,
          ),
          controller: _splash3dModelController,
          topTitleClipProgress: 1.0 - _page0TopTitleController.value,
          bottomTitleClipProgress: 1.0 - _page0BottomTitleController.value,
        );
        break;
      case 1:
        result = Splash3dWidget(
          bottomTitle: l10n.splash02,
          backgroundColor: const Color(0xFFECA6C8),
          image: AssetImage(
            AllImages().fitgirl01,
          ),
          pageIndex: 1,
          controller: _splash3dModelController,
          topTitleClipProgress: 1.0 - _page1TopTitleController.value,
          bottomTitleClipProgress: 1.0 - _page1BottomTitleController.value,
          backgroundShapeOpacity: 1,
          bottomTitleScale: 0.9,
        );
        break;
      case 2:
        result = Splash3dWidget(
          bottomTitle: l10n.splash03,
          backgroundColor: const Color(0xFFFFD500),
          image: AssetImage(
            AllImages().fitman01,
          ),
          pageIndex: 2,
          controller: _splash3dModelController,
          topTitleClipProgress: 1.0 - _page2TopTitleController.value,
          bottomTitleClipProgress: 1.0 - _page2BottomTitleController.value,
        );
        break;
    }
    return result!;
  }

  bool _handleScroll(ScrollUpdateNotification? scrollUpdate) {
    setState(() {
      final appSize = MediaQuery.of(context).size;
      final pageProgress = (1.0 -
                  ((scrollUpdate!.metrics.pixels / appSize.width) - _pageIndex)
                      .abs()
                      .clamp(0.0, 1.0)) *
              2.0 -
          1.0;
      _splash3dModelController.cameraOffset =
          (1 - pageProgress) * 8.0 * scrollUpdate.scrollDelta!.sign;

      // ignore: omit_local_variable_types
      double animValue = 0;
      switch (_pageIndex) {
        case 0:
          animValue = _page0TopTitleController.value;
          break;
        case 1:
          animValue = _page1TopTitleController.value;
          break;
        case 2:
          animValue = _page2TopTitleController.value;
          break;
      }

      if (animValue != 0) {
        switch (_pageIndex) {
          case 0:
            if (!_page0TopTitleController.isAnimating) {
              _page0TopTitleController.value = pageProgress;
              _page0BottomTitleController.value = pageProgress;
            }
            break;
          case 1:
            if (!_page1TopTitleController.isAnimating) {
              _page1TopTitleController.value = pageProgress;
              _page1BottomTitleController.value = pageProgress;
            }
            break;
          case 2:
            if (!_page2TopTitleController.isAnimating) {
              _page2TopTitleController.value = pageProgress;
              _page2BottomTitleController.value = pageProgress;
            }
            break;
        }
      }
      switch (_pageIndex) {
        case 0:
          if (pageProgress > 0.99) {
            _page0TopTitleController.animateTo(1);
            Future.delayed(
              const Duration(milliseconds: 200),
              () => _page0BottomTitleController.animateTo(1),
            );
          }
          _page1TopTitleController.reset();
          _page1BottomTitleController.reset();
          _page2TopTitleController.reset();
          _page2BottomTitleController.reset();
          break;
        case 1:
          _page0TopTitleController.reset();
          _page0BottomTitleController.reset();
          if (pageProgress > 0.99) {
            _page1TopTitleController.animateTo(1);
            Future.delayed(
              const Duration(milliseconds: 200),
              () => _page1BottomTitleController.animateTo(1),
            );
          }
          _page2TopTitleController.reset();
          _page2BottomTitleController.reset();
          break;
        case 2:
          _page0TopTitleController.reset();
          _page0BottomTitleController.reset();
          _page1TopTitleController.reset();
          _page1BottomTitleController.reset();
          if (pageProgress > 0.99) {
            _page2TopTitleController.animateTo(1);
            Future.delayed(
              const Duration(milliseconds: 200),
              () => _page2BottomTitleController.animateTo(1),
            );
          }
          break;
      }
    });

    return false;
  }

  void _handleTap(TapUpDetails details) {
    _splash3dModelController.triggerTap(
      context,
      details.localPosition,
      _pageIndex,
    );
  }

  void _handlePageChange(int page) {
    setState(() {
      _pageIndex = page;
    });
  }
}
