import 'package:flutter/material.dart';
import '../auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<Map<String, String>> splashData = [
    {
      "image": "assets/images/Pana1.png",
      "title": "Adventure awaits out there\nstart your journey today!",
      "subtitle":
          "Begin your journey into a world full of adventure, culture, and hidden wonders waiting to be found.",
    },
    {
      "image": "assets/images/pana2.png",
      "title": "On the Move\nTravelers Navigating Their Journey",
      "subtitle":
          "Two adventurers with luggage and navigation tools, heading toward their destination with an airplane soaring above",
    },
    {
      "image": "assets/images/pana3.png",
      "title": "Ready for Adventure\nA Traveler Embracing the Journey",
      "subtitle":
          " An explorer with luggage, map in hand and thumb raised, with a plane overhead and a van in the background, eager to discover new places",
    },
    {
      "image": "assets/images/pana4.png",
      "title": "Choosing the Path\nA Traveler Planning Their Next Stop",
      "subtitle":
          "A wanderer with a map and luggage, deciding between destinations like hills, hotel, beach, and park at a crossroads",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// 🔹 INDICATOR
              Row(
                children: List.generate(
                  splashData.length,
                  (index) => _indicator(active: index == currentIndex),
                ),
              ),

              const SizedBox(height: 30),

              /// 🔹 SLIDER
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: splashData.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            splashData[index]['image']!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          splashData[index]['title']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          splashData[index]['subtitle']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              /// 🔹 BUTTON
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1659C5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),

              const SizedBox(height: 16),
              const Text(
                'Dengan melanjutkan, kamu setuju bahwa pihak lain memakai data '
                'aplikasi untuk meningkatkan pengalaman di aplikasi.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black45,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// 🔹 INDICATOR WIDGET
  Widget _indicator({bool active = false}) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 4,
        decoration: BoxDecoration(
          color: active ? const Color(0xFF1659C5) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
