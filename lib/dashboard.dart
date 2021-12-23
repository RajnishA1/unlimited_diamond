// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unlimited_diamond/gift.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 6.0,
                              spreadRadius: 4.0,
                              offset: Offset(0.0, 3.0))
                        ],
                        color: Color(0xFFC6E7FE),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.contain,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                child: Text(
                  "Get Unlimited",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 27.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                child: Text(
                  "Diamond",
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 27.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: GoogleFonts.notoSans(fontSize: 14.0),
                      border: InputBorder.none,
                      fillColor: Colors.grey.withOpacity(0.5),
                      prefixIcon: Icon(Icons.search, color: Colors.grey)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Recommended',
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w500, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildListItem('Diamond', 'assets/diamond.png', 'Free',
                      Color(0xFFD7FADA)),
                  _buildListItem(
                    'scan',
                    'assets/scan.png',
                    'Free',
                    Color(0xFFC2E3FE),
                  ),
                  _buildListItem('Summon ', 'assets/summon airdrop.png', 'Free',
                      Color(0xFFFFCC80)),
                  _buildListItem('Weapon', 'assets/weapon royale voutcher.png',
                      'Free', Color(0xFFD7FADA)),
                  _buildListItem('bon fire', 'assets/bon fire.png', 'Free',
                      Color(0xFFC2E3FE)),
                  _buildListItem('Armor crate', 'assets/armor crate.png',
                      'Free', Color(0xFFFFCC80)),
                  _buildListItem('Supply Crate', 'assets/supply crate.png',
                      'Free', Color(0xFFD7FADA)),
                  _buildListItem('Resupply Map', 'assets/resupply map.png',
                      'Free', Color(0xFFC2E3FE)),
                  _buildListItem('Bounty Token', 'assets/bounty token.png',
                      'Free', Color(0xFFFFCC80)),
                  _buildListItem('Leg Pocket', 'assets/leg pocket.png', 'Free',
                      Color(0xFFD7FADA)),
                  _buildListItem('Incubador ', 'assets/incubador voutcher.png',
                      'Free', Color(0xFFC2E3FE)),
                  _buildListItem(
                      'Diamond Royale ',
                      'assets/diamond royale voutcher.png',
                      'Free',
                      Color(0xFFFFCC80)),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle: GoogleFonts.notoSans(
                    fontSize: 16.0, fontWeight: FontWeight.w700),
                unselectedLabelStyle: GoogleFonts.notoSans(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    child: Text("COMBO"),
                  ),
                  Tab(
                    child: Text("RECOMANDED"),
                  ),
                  Tab(
                    child: Text("FUTURE"),
                  ),
                  Tab(
                    child: Text("PURCHACHED"),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 450.0,
              child: TabBarView(
                controller: tabController,
                children: [
                  GiftTab(),
                  GiftTab(),
                  GiftTab(),
                  GiftTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildListItem(
    String foodname,
    String imgPath,
    String price,
    Color bgcolor,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 175.0,
          width: 150.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0), color: bgcolor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                  tag: foodname,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        imgPath,
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  )),
              SizedBox(
                height: 25.0,
              ),
              Text(
                foodname,
                style:
                    GoogleFonts.notoSans(fontSize: 17.0, color: Colors.black),
              ),
              Text(
                '\$' + price,
                style:
                    GoogleFonts.notoSans(fontSize: 17.0, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
