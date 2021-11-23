![Pub](https://img.shields.io/pub/v/bottom_nav_bar) <a href="https://github.com/Solido/awesome-flutter">
    <img alt="Awesome Flutter" src="https://img.shields.io/badge/Awesome-Flutter-blue.svg?longCache=true&style=flat-square" />
</a> 
![Widget Tests](https://github.com/imsujan276/bottom_nav_bar/workflows/Widget%20Tests/badge.svg?branch=master)

[![Latest compatibility result for Stable channel](https://img.shields.io/endpoint?url=https://pub.green/packages/bottom_nav_bar/badge?channel=stable)](https://pub.green/packages/bottom_nav_bar)
[![Latest compatibility result for Beta channel](https://img.shields.io/endpoint?url=https://pub.green/packages/bottom_nav_bar/badge?channel=beta)](https://pub.green/packages/bottom_nav_bar)
[![Latest compatibility result for Dev channel](https://img.shields.io/endpoint?url=https://pub.green/packages/bottom_nav_bar/badge?channel=dev)](https://pub.green/packages/bottom_nav_bar)

<br><br>

# BottomNavBar

A beautiful and animated bottom navigation.
The navigation bar uses your current theme, but you are free to customize it.

| Preview 1 | Preview 1 | Preview 1 |
|---------|----------|---------|
|(https://github.com/imsujan276/bottom_nav_bar/blob/master/images/1.gif) | (https://github.com/imsujan276/bottom_nav_bar/blob/master/images/2.gif) | (https://github.com/imsujan276/bottom_nav_bar/blob/master/images/3.gif) |

## Available Customization options

### BottomNavBar
- `iconSize` - the item icon's size
- `items` - navigation items, item length should be from 3 to 5
- `selectedIndex` - the current item index. Use this to change the selected item. Defaults to zero
- `onItemSelected` - required to listen when an item is tapped it provides the selected item's index
- `backgroundColor` - the navigation bar's background color
- `showElevation` - if false the appBar's elevation will be removed
- `mainAxisAlignment` - use this property to change the horizontal alignment of the items. It is mostly used when you have ony two items and you want to center the items
- `curve` - param to customize the item change's animation
- `containerHeight` - changes the Navigation Bar's height
- `containerPadding` - changes the Navigation Bar's padding
 
### BottomNavBarItem
- `icon` - the icon of this item
- `title` - the text that will appear next to the icon when this item is selected
- `activeColor` - the active item's icon and text color
- `inactiveColor` - the inactive item's icon color
- `activeBackgroundColor` - the active item's background color
- `inactiveBackgroundColor` - the inactive item's background color

## Getting Started

Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  bottom_nav_bar: ^1.0.0
```

## Basic Widget

```dart
bottomNavigationBar: BottomNavBar(
        showElevation: true,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'Home',
            icon: const Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.red.shade300,
          ),
          BottomNavBarItem(
            title: 'Profile',
            icon: const Icon(Icons.person),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.blue.shade300,
          ),
          BottomNavBarItem(
            title: 'Message',
            icon: const Icon(Icons.chat_bubble),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: Colors.green.shade300,
          ),
          BottomNavBarItem(
            title: 'Settings',
            icon: const Icon(Icons.settings),
            inactiveColor: Colors.black,
            activeColor: Colors.black,
            activeBackgroundColor: Colors.yellow.shade300,
          ),
        ],
      )
```

## Full Example using IndexedStack

```dart
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _body() => SizedBox.expand(
        child: IndexedStack(
          index: _currentIndex,
          children: const <Widget>[
            PageOne(),
            PageTwo(),
            PageThree(),
            PageFour(),
          ],
        ),
      );

  Widget _bottomNavBar() => BottomNavBar(
        showElevation: true,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'Home',
            icon: const Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.red.shade300,
          ),
          BottomNavBarItem(
            title: 'Profile',
            icon: const Icon(Icons.person),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.blue.shade300,
          ),
          BottomNavBarItem(
            title: 'Message',
            icon: const Icon(Icons.chat_bubble),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: Colors.green.shade300,
          ),
          BottomNavBarItem(
            title: 'Settings',
            icon: const Icon(Icons.settings),
            inactiveColor: Colors.black,
            activeColor: Colors.black,
            activeBackgroundColor: Colors.yellow.shade300,
          ),
        ],
      );
}

```
