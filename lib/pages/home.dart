import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "STYLISH",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.dehaze_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                child: Stack(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      'image/image.svg',
                                      fit: BoxFit.none,
                                    )
                                  ],
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text("Home Furniture",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text(
                                          "1,525",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text("posts")
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text("4m",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700)),
                                        Text("followers")
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text("256",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700)),
                                        Text("following")
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                              "Home accessories, some information about us")),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          alignment: AlignmentDirectional.topStart,
                          child: Text("Contact us:")),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          alignment: AlignmentDirectional.topStart,
                          child: Text("+925 987 952 2365")),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          alignment: AlignmentDirectional.topStart,
                          child: Text("Chennai, India")),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: RaisedButton(
                          child: Text("Add Product"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: RaisedButton(
                          child: Text("Share"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: RaisedButton(
                          child: Text("Contact Us"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Stack(
                          children: <Widget>[
                            SvgPicture.asset(
                              'image/image.svg',
                              fit: BoxFit.none,
                            )
                          ],
                        )),
                  );
                },
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.black,
            ),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.black,
            ),
            label: 'person',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
