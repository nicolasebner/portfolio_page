const rootRoute = "/";

const homeviewPageRoute = "/home";
const homeviewPageDisplayName = "Home";

const projectviewPageRoute = "/projects";
const projectviewPageDisplayName = "Projekte";

const contactviewPageRoute = "/contact";
const contactviewPageDisplayName = "Kontakt";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> topNavMenuItems = [
  MenuItem(homeviewPageDisplayName, homeviewPageRoute),
  MenuItem(projectviewPageDisplayName, projectviewPageRoute),
  MenuItem(contactviewPageDisplayName, contactviewPageRoute),
];
