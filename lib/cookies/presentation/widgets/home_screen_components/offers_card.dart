part of '../../pages/home_screen.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({
    super.key,
    required this.offer,
  });

  final Offer offer;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 132,
          width: MediaQuery.of(context).size.width - 32, // screen width - horizontal padding
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
          child: Row(
            children: [
              Image.asset(
                offer.cookie.imageUrl,
                height: 77,
                width: 77,
                fit: BoxFit.cover,
              ),
              kMediumHorizontalSpace,
              Expanded(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kMediumVerticalSpace,
                        Text(
                          offer.cookie.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: CustomFontWight.regular,
                          ),
                        ),
                        kSmallVerticalSpace,
                        const PremiumLabel(),
                        kSmallVerticalSpace,
                      ],
                    ),
                    kLargeHorizontalSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${offer.cookie.price} USD",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: CustomFontWight.regular,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          "${offer.newPrice} USD",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: CustomFontWight.semiBold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(
              DetailsScreen.detailsScreenRoute,
              arguments: {"cookie": offer.cookie},
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
