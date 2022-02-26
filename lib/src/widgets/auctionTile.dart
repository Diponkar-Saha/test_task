import 'package:flutter/material.dart';
import '../models/auctionItemPreview.dart';

auctionTile(BuildContext context, AuctionItemPreview auctionItemPreview) {



  return Container(

      decoration: new BoxDecoration (
                color: Colors.tealAccent,

            ),
    child: ListTile(

      tileColor:  Colors.blue ,

      title: Text(auctionItemPreview.productName!,style: TextStyle(color: Colors.deepOrange),),
      subtitle: Text(auctionItemPreview.productDescription!),
      trailing: Text('\$'+ auctionItemPreview.minBidPrice.toString()),
      onTap: () {
        Navigator.of(context).pushNamed('/'+auctionItemPreview.itemId!);
      },
    ),
  );
}

// children: <Widget>[
//         new Container (
//             decoration: new BoxDecoration (
//                 color: Colors.red
//             ),
//             child: new ListTile (
//                 leading: const Icon(Icons.euro_symbol),
//                 title: Text('250,00')
//             )
//         )
//     ]