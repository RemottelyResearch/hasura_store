import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserCardWidget extends StatelessWidget {
  final String userName;
  // final String categoriaProduto;
  // final String tipoProduto;
  final String userEmail;
  final String userId;

  const UserCardWidget(
      {Key key,
      @required this.userName,
      // @required this.categoriaProduto,
      // @required this.tipoProduto,
      @required this.userEmail,
      @required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed('/update-produto/$userId');
      },
      child: Card(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 50,
              right: -50,
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Theme.of(context).primaryColor.withOpacity(.4),
              ),
            ),
            Positioned(
              top: 100,
              right: 50,
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
              ),
            ),
            Positioned(
              top: 120,
              right: 150,
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Theme.of(context).primaryColor.withOpacity(.1),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(userName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  // Text(categoriaProduto,
                  //     style: TextStyle(color: Colors.black, fontSize: 18)),
                  // Row(
                  //   children: <Widget>[
                  //     Expanded(
                  //         child: Text(tipoProduto,
                  //             style: TextStyle(
                  //                 color: Colors.black, fontSize: 18))),
                      Text(
                        userEmail,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
