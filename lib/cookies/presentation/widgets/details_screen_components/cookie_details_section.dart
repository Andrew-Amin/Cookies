part of '../../pages/details_screen.dart';

class CookieDetailsSection extends StatefulWidget {
  const CookieDetailsSection({
    super.key,
    required this.cookie,
  });

  final Cookie cookie;

  @override
  State<CookieDetailsSection> createState() => _CookieDetailsSectionState();
}

class _CookieDetailsSectionState extends State<CookieDetailsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PremiumLabel(),
        TweenAnimationBuilder(
          duration: const Duration(milliseconds: 1),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: child,
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cookies",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: CustomFontWight.semiBold,
                ),
              ),
              Text(
                widget.cookie.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: CustomFontWight.semiBold,
                ),
              ),
            ],
          ),
        ),
        TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Padding(
                padding: EdgeInsets.only(top: value * 32),
                child: child!,
              ),
            );
          },
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.cookie.description,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: CustomFontWight.regular,
                  ),
                ),
              ),
              kMediumHorizontalSpace,
              const AddToOrderIcon(),
            ],
          ),
        )
      ],
    );
  }
}
