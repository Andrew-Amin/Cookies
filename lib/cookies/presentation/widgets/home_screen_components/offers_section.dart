part of '../../pages/home_screen.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// simulate state management
    final List<Offer> offersList = BlocProvider.of<CookiesCubit>(context).getOffers();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Offers",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SeeMore(onTap: () {})
            ],
          ),
        ),
        kMediumVerticalSpace,
        SizedBox(
          height: 132, // cookie sizedBox height + Details Container height
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return OffersCard(offer: offersList[index]);
            },
            separatorBuilder: (context, index) => kMediumHorizontalSpace,
            itemCount: offersList.length,
          ),
        )
      ],
    );
  }
}
