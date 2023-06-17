part of "../../pages/home_screen.dart";

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kLargePadding,
        left: kMediumPadding,
        right: kMediumPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          UserInfo(),
          CartIcon(),
        ],
      ),
    );
  }
}
