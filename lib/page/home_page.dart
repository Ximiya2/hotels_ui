import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotels_ui/items/hotel_item.dart';
import 'package:hotels_ui/utils/functions.dart';

import '../attributes.dart';
import '../items/hotel_category_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var editCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/hotels/i.webp')
                  )
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(0.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text('What kind of hotel you need?',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search for hotels...'
                        ),
                        onChanged: (val){
                          if(val != ''){
                            searcheHotel(val);
                          } else {
                            searchedList.clear();
                          }
                          setState(() { });
;                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            searchedList.isNotEmpty?
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.26*searchedList.length,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        itemCount: searchedList.length,
                        itemBuilder: (context, index){
                          return hotelItem(
                              context,
                              searchedList[index].image,
                              searchedList[index].hotelName,
                            edit: () {
                                editCtr.text = searchedList[index].hotelName;
                                showDialog(context: context, builder: ((context){
                                  return AlertDialog(
                                    title: Text('Edit'),
                                    content: Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: editCtr,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                hintText: 'Enter new name'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                            },
                                          child: Text('Cancel')),
                                      TextButton(
                                          onPressed: (){
                                            searchedList[index].hotelName = editCtr.text;
                                            Navigator.pop(context);
                                            setState(() { });
                                          },
                                          child: Text('Edit')),
                                    ],
                                  );
                                }));
                            }
                          );
                        })
                )
           : SizedBox(
              height:  MediaQuery.of(context).size.height * 0.35 * categoryList.length,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categoryList.length,
                  itemBuilder: (context,index){
                    return hotelCategoryItem(
                        context,
                        categoryList[index].categoryName,
                        categoryList[index].hotels,
                        () {
                          editCtr.text = categoryList[index].hotels[editIndex].hotelName;
                          showDialog(context: context, builder: ((context){
                            return AlertDialog(
                              title: Text('Edit'),
                              content: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: editCtr,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          hintText: 'Enter new name'
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel')),
                                TextButton(
                                    onPressed: (){
                                      categoryList[index].hotels[editIndex].hotelName = editCtr.text;
                                      Navigator.pop(context);
                                      setState(() { });
                                    },
                                    child: Text('Edit')),
                              ],
                            );
                          }));
                        },
                    );
                  }),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hotels_ui/items/hotel_item.dart';
//
// import '../attributes.dart';
// import '../items/hotel_category_item.dart';
// import '../items/item_product.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var commentCtr = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.width * 0.8,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: AssetImage(
//                     'assets/hotels/hotel0.jpg',
//                   ),
//                 ),
//               ),
//               child: Container(
//                 height: MediaQuery.of(context).size.width * 0.8,
//                 width: double.infinity,
//                 color: Colors.black.withOpacity(0.3),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Text(
//                       'What kind of hotel you\n              need?',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30, vertical: 30),
//                       child: TextFormField(
//                         controller: commentCtr,
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           prefixIcon: Icon(
//                             Icons.search,
//                             color: Colors.grey,
//                           ),
//                           hintText: 'Search for hotels...',
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height*0.35*
//               categorylist.length,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: categorylist.length,
//                   itemBuilder: (context,index){
//                     return HotelCategoryItem(
//                       context,
//                       categorylist[index].categoryName,
//                       categorylist[index].hotels,
//                     );
//                   }),
//             ),
//             SizedBox(height: 30,),
//           ],
//         ),
//       ),
//     );
//   }
// }
