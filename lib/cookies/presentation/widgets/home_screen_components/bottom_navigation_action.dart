part of '../../pages/home_screen.dart';

class BottomNavigationAction extends StatefulWidget {
  const BottomNavigationAction({
    super.key,
    required this.isSelected,
    required this.onSelect,
    required this.value,
  });

  final bool isSelected;
  final BottomNavigationTabs value;
  final Function(BottomNavigationTabs) onSelect;

  @override
  State<BottomNavigationAction> createState() => _BottomNavigationActionState();
}

class _BottomNavigationActionState extends State<BottomNavigationAction>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _sizeAnimation;
  final Duration _duration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration);
    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(tween: Tween<double>(begin: 20, end: 15), weight: 50),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 15, end: 20), weight: 50),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isSelected
          ? null
          : () {
              widget.onSelect(widget.value);
              _controller.forward();
              Future.delayed(_duration, () => _controller.reset());
            },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return Container(
                width: 64,
                height: 64,
                padding: EdgeInsets.all(_sizeAnimation.value),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWidgetsDarkBackgroundColor,
                ),
                child: SvgPicture.asset(_getIconPath),
              );
            },
          ),
          kMediumVerticalSpace,
          Text(
            _getTitle,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: widget.isSelected ? kAccentColor : Colors.white38,
                ),
          ),
        ],
      ),
    );
  }

  String get _getTitle {
    switch (widget.value) {
      case BottomNavigationTabs.home:
        return "Home";
      case BottomNavigationTabs.search:
        return "Search";
      case BottomNavigationTabs.premium:
        return "Premium";
    }
  }

  String get _getIconPath {
    switch (widget.value) {
      case BottomNavigationTabs.home:
        return "assets/images/svgs/Icon_Home.svg";
      case BottomNavigationTabs.search:
        return "assets/images/svgs/Icon_Search.svg";
      case BottomNavigationTabs.premium:
        return "assets/images/svgs/Icon_Premium.svg";
    }
  }
}
