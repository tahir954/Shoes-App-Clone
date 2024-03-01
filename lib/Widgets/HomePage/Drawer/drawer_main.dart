import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes1/Widgets/HomePage/Drawer/drawer_all_pages.dart';
import 'package:shoes1/Widgets/HomePage/appbar_title.dart';
import 'package:velocity_x/velocity_x.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
                centerTitle: true,
                leading: Builder(
                  builder: (context) => GestureDetector(
                    onTap: () => Scaffold.of(context).closeDrawer(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 0.3,
                          color: Colors.grey,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Svgs/arrow_back.svg',
                        color: Theme.of(context).primaryColor,
                      ).p(8),
                    ).p(12),
                  ),
                ),
                title: const AppbarTitle(
                  appBarTitle: "MENU",
                ),
              ).pOnly(left: 10),
              const HeightBox(20),
              ListTile(
                dense: true,
                leading: Image.asset('assets/images/Others/profile_picture.png'),
                title: Text(
                  'XamDesign',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                      ),
                ),
                subtitle: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ).pOnly(left: 10),
              const DrawerAllPages().pOnly(top: 20, left: 20),
            ],
          ),
          InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: () {},
            child: Row(
              children: [
                SvgPicture.asset('assets/images/Svgs/sign_out_arrow.svg').pOnly(right: 17),
                Text(
                  'Sign Out',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ).p(10),
          ).pOnly(left: 20,bottom: 40),
        ],
      ),
    );
  }
}
