
import 'package:fleet_mobile/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleDashboard extends StatefulWidget {
  const TitleDashboard(
      {Key? key,this.titleStr,this.colorOfWidget,required this.amount, required this.iconWidget, required this.changeFromPreMonth})
      : super(key: key);

  final int? colorOfWidget;
  final int amount;
  final String? titleStr;
  final IconData iconWidget;
  final int changeFromPreMonth;

  @override
  State<TitleDashboard> createState() => _TitleDashboardState();
}

class _TitleDashboardState extends State<TitleDashboard> {
  @override
  void initState() {
    super.initState();
  }

  double widgetHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: widgetHeight,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration:  BoxDecoration(
              border: Border.all(
              color: Colors.black38
            ),
              //color: Color(0xff182345),
              borderRadius: const BorderRadius.all(
                 Radius.circular(20))),
          child: SafeArea(
            child: Row(
              children: [
                // Label Column
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      // -2 because Border have 1px
                      height: widgetHeight-2,
                      color: Color(widget.colorOfWidget!),
                      child: Icon(
                          widget.iconWidget,
                          color: Colors.white),
                    )
                  ],
                ),
                // Details Column
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            "Ostatni miesiąc",
                            style:
                                TextStyle(color: Color(0xff9F9AA4), fontSize: 22),
                          ),
                          Text(
                            widget.titleStr!,
                            style:
                                const TextStyle(color: Color(0xff151515), fontSize: 15),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                 Expanded(
                                  flex: 3,
                                  child: Text(
                                    widget.amount.toString(),
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: Color(widget.colorOfWidget!),
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children:  [
                                      Icon(
                                        widget.changeFromPreMonth>0 ? Icons.trending_up: Icons.trending_down,
                                        color: widget.changeFromPreMonth>0 ? Colors.green : Colors.red,
                                        size: 35,
                                      ),
                                      Divider(
                                        color: widget.changeFromPreMonth>0 ? Colors.green : Colors.red,
                                        height: 20.0,
                                        thickness: 3.0,
                                      ),
                                      Text(
                                        widget.changeFromPreMonth>0 ? '+${widget.changeFromPreMonth}%' : '${widget.changeFromPreMonth}%',
                                        style: TextStyle(
                                            color: widget.changeFromPreMonth>0 ? Colors.green : Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                )
              ],
            ),
          ),
    );
  }
}
