import 'package:flutter/material.dart';
import 'package:gridviewdesign/models/models.dart';
import 'package:gridviewdesign/views/items_design.dart';

class ItemsGridView extends StatefulWidget {
  final List<Items> listItem;
  const ItemsGridView({required this.listItem});

  @override
  State<ItemsGridView> createState() => _ItemsGridViewState();
}

class _ItemsGridViewState extends State<ItemsGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.listItem.length,
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 4/7.1), itemBuilder: (context,index){
      return ItemsDesign(img: widget.listItem[index].img, name: widget.listItem[index].name, time: widget.listItem[index].time, ticket: widget.listItem[index].ticket, buyticket: widget.listItem[index].buyticket,percentage: widget.listItem[index].percentage,);
    });
  }
}