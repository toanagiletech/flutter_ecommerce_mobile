import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/widgets.dart';

class GroupProductsWidget extends StatelessWidget {

  final Widget title;

  GroupProductsWidget({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            title,
            Container(
              width: double.infinity,
            child: IntrinsicHeight(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ProductWidget(),
                    VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget(),
                    VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget(),
                    VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget(),
                  ],
                ),
              ),
            ),)
          ],
        ),
    );
  }
}
