part of "../../pages/home_screen.dart";

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/pngs/Avatar.png"),
          radius: 25,
        ),
        kMediumHorizontalSpace,
        Column(
          children: const [
            Text(
              "Ahmed",
              style: TextStyle(
                fontSize: 18,
                fontWeight: CustomFontWight.semiBold,
              ),
            ),
            Text(
              "Elfayoumi",
              style: TextStyle(
                fontSize: 14,
                fontWeight: CustomFontWight.regular,
              ),
            ),
          ],
        )
      ],
    );
  }
}
