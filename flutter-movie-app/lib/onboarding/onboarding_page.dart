import 'package:flutter/material.dart';
import 'package:flutter_movie_app/config/app_colors.dart';
import 'package:flutter_movie_app/config/app_dimens.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          _BuildBackgroundImage(),
          _BuildBackgroundGradient(),
          _BuildContentAndAction(),
        ],
      ),
    );
  }
}

class _BuildBackgroundImage extends StatelessWidget {
  const _BuildBackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/welcome-screen.png',
      fit: BoxFit.fill,
      width: double.infinity,
      height: double.infinity,
    );
  }
}

class _BuildBackgroundGradient extends StatelessWidget {
  const _BuildBackgroundGradient();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(255, 26, 24, 24),
            Color(0x00000000),
          ],
        ),
      ),
    );
  }
}

class _BuildContentAndAction extends StatelessWidget {
  const _BuildContentAndAction();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.px16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(flex: 4),
          const _BuildContentSlider(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}

class _BuildContentSlider extends StatefulWidget {
  const _BuildContentSlider();

  @override
  State<_BuildContentSlider> createState() => _BuildContentSliderState();
}

class _BuildContentSliderState extends State<_BuildContentSlider> {
  int activePage = 0;

  late final List<_Intro> _intros;
  late final PageController _pageController;

  @override
  void initState() {
    _intros = [
      _Intro(
        title: 'Welcome to Movie App',
        description:
            'The best movie streaming app of the century to make your days great!',
      ),
      _Intro(
        title: 'Watch your favorite movies',
        description:
            'Stream your favorite movies and TV shows on your phone, tablet, laptop, and TV without paying more.',
      ),
      _Intro(
        title: 'Download your favorite movies',
        description:
            'Download your favorite movies and TV shows on your phone, tablet, laptop, and TV without paying more.',
      ),
    ];
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Flexible(
      child: Column(
        children: [
          Flexible(
            child: PageView.builder(
              controller: _pageController,
              pageSnapping: true,
              onPageChanged: (value) {
                setState(() {
                  activePage = value;
                });
              },
              itemBuilder: (context, index) {
                final intro = _intros[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      intro.title,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppDimens.px32),
                    Text(
                      intro.description,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle1?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              itemCount: _intros.length,
            ),
          ),
          const SizedBox(height: AppDimens.px8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(_intros.length, activePage),
          ),
          const SizedBox(height: AppDimens.px16),
        ],
      ),
    );
  }

  List<Widget> indicators(int length, int currentIndex) {
    return List<Widget>.generate(
      length,
      (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.all(4),
          width: currentIndex == index ? 30 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? AppColors.primary : Colors.white70,
            borderRadius: BorderRadius.circular(100),
          ),
        );
      },
    );
  }
}

class _Intro {
  final String title;
  final String description;

  _Intro({
    required this.title,
    required this.description,
  });
}
