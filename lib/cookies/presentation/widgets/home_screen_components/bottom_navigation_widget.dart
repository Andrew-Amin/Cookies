part of '../../pages/home_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  BottomNavigationTabs _selectedTab = BottomNavigationTabs.home;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 78 + MediaQuery.of(context).padding.bottom,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
          ),
        ),
        Positioned(
          top: -40,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              kMediumHorizontalSpace,
              BottomNavigationAction(
                value: BottomNavigationTabs.home,
                isSelected: _selectedTab == BottomNavigationTabs.home,
                onSelect: (value) => setState(() => _selectedTab = BottomNavigationTabs.home),
              ),
              BottomNavigationAction(
                value: BottomNavigationTabs.search,
                isSelected: _selectedTab == BottomNavigationTabs.search,
                onSelect: (value) => setState(() => _selectedTab = BottomNavigationTabs.search),
              ),
              BottomNavigationAction(
                value: BottomNavigationTabs.premium,
                isSelected: _selectedTab == BottomNavigationTabs.premium,
                onSelect: (value) => setState(() => _selectedTab = BottomNavigationTabs.premium),
              ),
              kMediumHorizontalSpace,
            ],
          ),
        )
      ],
    );
  }
}
