class Menu {
  final int id;
  final String icon;
  final String text;

  Menu({
    required this.id,
    required this.icon,
    required this.text,
  });
}

List<Menu> menus = [
  Menu(id: 1, icon: "assets/icons/User Icon.svg", text: "My Account"),
  Menu(id: 2, icon: "assets/icons/Bell.svg", text: "Notifications"),
  Menu(id: 3, icon: "assets/icons/Settings.svg", text: "Settings"),
  Menu(
    id: 4,
    icon: "assets/icons/Question mark.svg",
    text: "Help Center",
  ),
  Menu(id: 5, icon: "assets/icons/Log out.svg", text: "Log Out"),
];
