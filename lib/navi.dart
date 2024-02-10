// // ignore_for_file: file_names
//
// import 'package:flutter/material.dart';
//
// class NavBar extends StatelessWidget {
//    NavBar({super.key});
// String?username;
// String ?email;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: 250, // Set the desired width here
//         child: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 16, 60, 236), // Dark blue
//                   Color.fromARGB(255, 138, 57, 13), // Light blue
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 DrawerHeader(
//                   decoration: const BoxDecoration(
//                     color: Colors.transparent,
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/wiii.jpeg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Stack(
//                     children: [
//                       Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Container(
//                           margin: const EdgeInsets.only(bottom: 20),
//                           child: const CircleAvatar(
//                             radius: 40,
//                             backgroundImage: AssetImage('assets/images/photo.jpeg'),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.bottomLeft,
//                         child: Container(
//                           margin: const EdgeInsets.only(left: 80, bottom: 20),
//                           child: const Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 '${'username'}',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 '${email}',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text('العوامل المؤثرة'),
//                   leading: const Icon(Icons.exit_to_app),
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, '/maps');
//                   },
//                 ),
//
//
//
//               ],
//             ),
//             ),
//         );
//    }
// }


import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final String name;
  final String email;

  const NavBar({Key? key, required this.name, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250, // Set the desired width here
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 16, 60, 236), // Dark blue
              Color.fromARGB(255, 138, 57, 13), // Light blue
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('assets/images/wiii.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/photo.jpeg'),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 80, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            email,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('العوامل المؤثرة'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/maps');
              },
            ),
            // Add more menu items as needed...
          ],
        ),
      ),
    );
  }
}
