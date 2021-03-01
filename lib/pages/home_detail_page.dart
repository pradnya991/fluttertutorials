import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatefulWidget {
  final Item catalog;

  const HomeDetailsPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  _HomeDetailsPageState createState() => _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(widget.catalog.id.toString()),
                    child: Image.network(widget.catalog.image))
                .p16()
                .h32(context),
            Expanded(
              child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        widget.catalog.name.text.xl2
                            .color(MyTheme.darkBluishColor)
                            .bold
                            .make(),
                        widget.catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox,
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has "
                            .text
                            .make()
                            .p16()
                      ],
                    ).p64(),
                  )),
            ),
            Container(
              color: Colors.white,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${widget.catalog.price}".text.bold.xl4.red800.make(),
                  RaisedButton(
                    color: MyTheme.darkBluishColor,
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: "Add to cart".text.make(),
                  ).wh(100, 50)
                ],
              ).p32(),
            )
          ],
        ),
      ),
    );
  }
}
