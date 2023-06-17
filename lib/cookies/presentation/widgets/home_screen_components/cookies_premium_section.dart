part of '../../pages/home_screen.dart';

class CookiesPremiumSection extends StatelessWidget {
  const CookiesPremiumSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// simulate state management
    final List<Cookie> cookiesList = BlocProvider.of<CookiesCubit>(context).getCookies();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
          child: Text(
            "Cookies",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Premium",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: kAccentColor,
                    ),
              ),
              SeeMore(onTap: () {})
            ],
          ),
        ),
        kMediumVerticalSpace,
        SizedBox(
          height: 270, // cookie sizedBox height + Details Container height
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CookieCard(cookie: cookiesList[index]);
            },
            separatorBuilder: (context, index) => kMediumHorizontalSpace,
            itemCount: cookiesList.length,
          ),
        )
      ],
    );
  }
}
