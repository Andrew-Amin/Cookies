part of '../../pages/details_screen.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({
    super.key,
    required this.cookie,
  });
  final Cookie cookie;
  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    final body = Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        kMediumVerticalSpace,
        const DetailsScreenHeader(),
        if (!isLandscape) const Spacer(),
        CookieDetailsSection(cookie: cookie),
      ],
    );

    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: isLandscape ? SingleChildScrollView(child: body) : body,
    );
  }
}
