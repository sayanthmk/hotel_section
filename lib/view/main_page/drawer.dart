import 'package:flutter/material.dart';
import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_page/all_hotels.dart';
import 'package:hotel_admin/view/dash_board_page/dash_main.dart';
import 'package:hotel_admin/view/permissions_page/permission_page/permission_page.dart';
import 'package:provider/provider.dart';

class DrawerSample extends StatelessWidget {
  const DrawerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminHotelProvider(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isSmallScreen = constraints.maxWidth < 600;

          return Scaffold(
            backgroundColor: const Color(0xFFE4E7E9),
            drawer: isSmallScreen ? const CustomDrawerWidget() : null,
            appBar: isSmallScreen
                ? AppBar(
                    title: const Text("Redsons Hotel"),
                    backgroundColor: Colors.blue,
                    centerTitle: true,
                  )
                : null,
            body: Row(
              children: [
                if (!isSmallScreen)
                  const SizedBox(
                    width: 250,
                    child: CustomDrawerWidget(),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Consumer<AdminHotelProvider>(
                      builder: (context, drawerState, _) {
                        return IndexedStack(
                          index: drawerState.selectedIndex,
                          children: [
                            Dashboard(),
                            AllHotels(),
                            PermissionPage(),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<AdminHotelProvider>().selectedIndex;

    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            _buildDrawerHeader(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem(
                    icon: Icons.dashboard,
                    title: 'Dashboard',
                    selected: selectedIndex == 0,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(0),
                  ),
                  _buildDrawerItem(
                    icon: Icons.hotel,
                    title: 'Hotels List',
                    selected: selectedIndex == 1,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(1),
                  ),
                  _buildDrawerItem(
                    icon: Icons.person,
                    title: 'Permissions',
                    selected: selectedIndex == 2,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(2),
                  ),
                  _buildDrawerItem(
                    icon: Icons.bar_chart,
                    title: 'Reports',
                    selected: selectedIndex == 3,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(3),
                  ),
                  _buildDrawerItem(
                    icon: Icons.settings,
                    title: 'Settings',
                    selected: selectedIndex == 4,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                'assets/hotel_logo.png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 15),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'StayWise',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Admin Panel',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: selected
          ? BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        dense: true,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}

// Custom Drawer Widget (Stateless)
// class CustomDrawerWidget extends StatelessWidget {
//   const CustomDrawerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           // Drawer header
//           Container(
//             width: 250,
//             height: 80,
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   const Text(
//                     'Redsons Hotel',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Drawer items
//           ListTile(
//             leading: const Icon(Icons.dashboard),
//             title: const Text('Dashboard'),
//             onTap: () {
//               context.read<AdminHotelProvider>().updateSelectedIndex(0);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.hotel),
//             title: const Text('Hotels List'),
//             onTap: () {
//               context.read<AdminHotelProvider>().updateSelectedIndex(1);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.person),
//             title: const Text('Permissions'),
//             onTap: () {
//               context.read<AdminHotelProvider>().updateSelectedIndex(2);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text('Reports'),
//             onTap: () {
//               context.read<AdminHotelProvider>().updateSelectedIndex(3);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text('Settings'),
//             onTap: () {
//               context.read<AdminHotelProvider>().updateSelectedIndex(3);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
  // void _updateSelectedIndex(BuildContext context, int index) {
  //   context.read<AdminHotelProvider>().updateSelectedIndex(index);
  //   Navigator.pop(context); // Close the drawer after selection
  // }