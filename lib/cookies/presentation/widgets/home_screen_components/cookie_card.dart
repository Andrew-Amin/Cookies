part of "../../pages/home_screen.dart";

class CookieCard extends StatelessWidget {
  const CookieCard({
    super.key,
    required this.cookie,
  });

  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 171,
          width: (MediaQuery.of(context).size.width / 2) - 24,
          // card takes half of screen - padding + horizontal gab
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(21),
              topLeft: Radius.circular(21),
              bottomRight: Radius.circular(72),
              bottomLeft: Radius.circular(21),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kMediumVerticalSpace,
              Text(
                cookie.name,
                // "Chocolate Lovers",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: CustomFontWight.regular,
                ),
              ),
              kSmallVerticalSpace,
              const PremiumLabel(),
              kSmallVerticalSpace,
              Text(
                "${cookie.price} USD",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: CustomFontWight.regular,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            cookie.imageUrl,
            height: 130,
            width: 130,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(
              DetailsScreen.detailsScreenRoute,
              arguments: {"cookie": cookie},
            ),
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/images/svgs/Icon_Arrow.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
