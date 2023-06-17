part of '../../pages/details_screen.dart';

class DetailsScreenHeader extends StatelessWidget {
  const DetailsScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).maybePop(),
          child: Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(kSmallPadding),
            decoration: const BoxDecoration(
              color: Color(0xffF5F5F5),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/images/svgs/arrow-left.svg"),
          ),
        ),
        const CartIcon(),
      ],
    );
  }
}
