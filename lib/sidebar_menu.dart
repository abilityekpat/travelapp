import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 24, 175, 117),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Row(
            children: [
              SizedBox(
                height: 150,
                child: DrawerHeader(
                  decoration: const BoxDecoration(),
                  child: CircleAvatar(
                    child: Image.asset("assets/images/png/photo.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Noral Powell",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Traveller",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 90),
            child: Divider(
              thickness: 0.3,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 25,
              color: Colors.white,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 25,
              color: Colors.white,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.location_history,
              size: 25,
              color: Colors.white,
            ),
            title: const Text(
              'Nearby me',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            onTap: () => null,
          ),
          const ListTile(
            leading: Icon(
              Icons.favorite,
              size: 25,
              color: Colors.white,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.notifications,
              size: 25,
              color: Colors.white,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 90),
            child: Divider(
              thickness: 0.3,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.sell,
              size: 25,
              color: Colors.white,
            ),
            title: const Text(
              'Promotion',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 25,
              color: Colors.white,
            ),
            title: const Text(
              'Policies',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            title: const Text(
              'Exit',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            leading: const Icon(
              Icons.help,
              size: 25,
              color: Colors.white,
            ),
            onTap: () => null,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 90),
            child: Divider(
              thickness: 0.3,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_sharp,
              size: 25,
              color: Colors.white,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            onTap: () => null,
            // trailing: ClipOval(
            //   child: Container(
            //     color: Colors.red,
            //     width: 20,
            //     height: 20,
            //     child: const Center(
            //       child: Text(
            //         '8',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 12,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
