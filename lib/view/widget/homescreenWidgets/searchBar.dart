
import 'package:ecommerce_project/controller/homecontroller.dart';
import 'package:ecommerce_project/controller/shopcontroller.dart';
import 'package:ecommerce_project/core/constant/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class SearchBar extends StatelessWidget {
  final Color color;
  const SearchBar({ Key? key, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding( padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
      child:Container( 
        
      decoration: ShapeDecoration(shape: StadiumBorder(),color: color,
      ),
      child: Padding(padding: EdgeInsets.fromLTRB(35, 2, 2, 2),
        child:
      Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.search,color: Colors.black,),
        SizedBox(width: 10,),
        Expanded(child: 
        TextFormField(
          decoration: InputDecoration(
            hintText:' looking for a specific Shop? ',
            hintStyle: TextStyle(color: Colors.black,),
            //hintStyle: TextStyle(fontFamily: "CherrySwash",fontWeight:FontWeight.w300),
    
            border: InputBorder.none,
          ),
         onSaved: (s){
             // ignore: unnecessary_null_comparison
             if(showSearch(context: context, delegate: Search())==null){
               showDialog(context: context,builder:(_)=>
               AlertDialog(title:Text('!!'),
               content:Text('No Search'),
               )
               );
             }
          },

          onTap: (){

            showSearch(context: context, delegate: Search());
          },
    
        )
        
        )
      ],
        
      )
      ),
    
    

      
      
    )
    );
  }
}
class Search extends SearchDelegate<String>
{
  HomeControllerImp controller=Get.put(HomeControllerImp());
  var sug=[
   shopsstatic[1],
   shopsstatic[3],
   shopsstatic[6],
   shopsstatic[4],
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    final suglist=query.isEmpty?sug:shopsstatic.where((p)=>p.shopname!.startsWith(query)).toList();
    if(shopsstatic.where((p)=>p.shopname!.startsWith(query)).toList().isEmpty){return const ListTile(title:Text('No Results'));}
    else {return ListView.builder(itemCount: suglist.length,itemBuilder: (context,index)=>

       ListTile(
         title:Text(suglist[index].shopname!),
         onTap: (){
          controller.goToShop(suglist[index].index!);
         },
       )
    
    
    );
    } 
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suglist=query.isEmpty?sug:shopsstatic.where((p)=>p.shopname!.startsWith(query)).toList();
  
    return ListView.builder(itemCount:suglist.length,itemBuilder:(context,index)=>
    ListTile(
      title:RichText(text: TextSpan(text: suglist[index].shopname!.substring(0,query.length),
                    style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: suglist[index].shopname!.substring(query.length),
                        style:TextStyle(color: Colors.grey),
                      )
                    ]
                  
      )
      ),
      onTap: (){
          controller.goToShop(suglist[index].index!);
      },
      
    ),
    
    
    );
  }

}