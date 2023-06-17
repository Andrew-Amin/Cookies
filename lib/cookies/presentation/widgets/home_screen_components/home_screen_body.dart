part of '../../pages/home_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          HomeScreenHeader(),
          kSmallVerticalSpace,
          CookiesPremiumSection(),
          kLargeVerticalSpace,
          OffersSection(),
          SizedBox(height: 180), // bottom navigation widget height + 32 padding
        ],
      ),
    );
  }
}
