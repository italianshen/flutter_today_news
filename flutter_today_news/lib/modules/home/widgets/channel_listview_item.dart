import 'package:flutter/material.dart';

class ChannelDidsplayView extends StatelessWidget {

  /// 标题数组
  List<String> titles;

  ChannelDidsplayView(this.titles);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _createGirdView(context);
  }

  Widget _createGirdView(BuildContext context){

    double lines = 1.0;
    double kColCount = 4;
    if(titles.length != 4){
      lines = ((titles.length + 2) ~/ 3).toDouble();
      kColCount = 3;
    }

    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 2.0;
    double itemWidth = (screenWidth - (kColCount + 1) * margin)/kColCount;
    double itemH = itemWidth * 2/5;
    return Container(
      height: itemH * lines + ((lines == 1 ? 1 : (lines))) * margin,
      padding: EdgeInsets.only(left: margin,right: margin,top: margin),
      color: Color(0xfff2f2f2),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),//去除gridView本身的滚动
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (titles.length == 4) ? 4 : 3,
            mainAxisSpacing: lines == 1 ? 0.0 : margin,
            crossAxisSpacing: margin,
            childAspectRatio: 5/2
        ),
        itemBuilder: _createGridViewItem,
        itemCount: titles.length,
      ),
    );
  }

  Widget _createGridViewItem(BuildContext context,int index){
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0)
        ),
        alignment: Alignment.center,
        child: Text(titles[index]),
      ),
    );
  }
}
