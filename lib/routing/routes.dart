const rootRoute = "/";

const homeviewPageRoute = "/home";
const homeviewPageDisplayName = "NAV_HOME";

const projectviewPageRoute = "/projects";
const projectviewPageDisplayName = "NAV_PROJECTS";

const contactviewPageRoute = "/contact";
const contactviewPageDisplayName = "NAV_CONTACT";

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
