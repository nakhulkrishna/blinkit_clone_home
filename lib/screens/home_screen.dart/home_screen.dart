import 'package:clone_blinkit/constants/app_colors.dart';
import 'package:clone_blinkit/screens/home_screen.dart/serch_screen.dart';
import 'package:clone_blinkit/widgets/app_bar.dart';
import 'package:clone_blinkit/widgets/all_products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: screenHeight * 0.13,
                pinned: false,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppColors.softYellow, AppColors.softYellow],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.03),
                        //* APP BAR HEADER
                        AppBarHeader(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //* APP TABS
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _tabController,
                    indicatorColor: AppColors.darkGrey,
                    labelColor: AppColors.darkGrey,
                    unselectedLabelColor: Colors.grey,
                    padding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.symmetric(horizontal: 12),
                    tabs: const [
                      Tab(text: 'All', icon: Icon(Icons.category)),
                      Tab(text: 'Summer', icon: Icon(Icons.sunny_snowing)),
                      Tab(text: 'Electronics', icon: Icon(Icons.headphones)),
                      Tab(text: 'Beauty', icon: Icon(Icons.battery_0_bar)),
                      Tab(text: 'Kids', icon: Icon(Icons.child_friendly)),
                      Tab(text: 'Gifting', icon: Icon(Icons.wallet_giftcard)),
                      Tab(text: 'Premium', icon: Icon(Icons.diamond)),
                    ],
                  ),
                  screenWidth,
                  screenHeight,
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              //* ALL PRODUCTS TAB SCREEN
              SingleChildScrollView(
                child: AllProducts(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),

              Center(child: Text("Summer products")),
              Center(child: Text("Electronics")),
              Center(child: Text("Beauty")),
              Center(child: Text("Kids")),
              Center(child: Text("Gifting")),
              Center(child: Text("Premium")),
            ],
          ),
        ),
      ),
    );
  }
}

//* AppBar
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar, this.screenWidth, this.screenHeight);

  final TabBar _tabBar;
  final double screenWidth;
  final double screenHeight;

  @override
  double get minExtent =>
      _tabBar.preferredSize.height + screenHeight * 0.055 + screenWidth * 0.08;
  @override
  double get maxExtent =>
      _tabBar.preferredSize.height + screenHeight * 0.055 + screenWidth * 0.08;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.softYellow, AppColors.white],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductSearchPage()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Container(
                height: screenHeight * 0.055,
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: AppColors.darkGrey),
                    SizedBox(width: screenWidth * 0.025),
                    Text(
                      'Search for fruits, snacks...',
                      style: GoogleFonts.poppins(
                        color: AppColors.darkGrey,
                        fontSize: screenHeight * 0.018,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        width: 20,
                      ),
                    ),
                    Icon(Icons.mic),
                  ],
                ),
              ),
            ),
          ),
          _tabBar,
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return oldDelegate._tabBar != _tabBar ||
        oldDelegate.screenWidth != screenWidth ||
        oldDelegate.screenHeight != screenHeight;
  }
}
