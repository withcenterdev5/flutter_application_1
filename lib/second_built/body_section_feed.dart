import 'package:flutter/material.dart';


//first row
// (CircleAvatar and Name+time of post) + (... && x buttons)

//second row
// status

//third row 
// reacts

//divider line

// 4th row
// like, comment, share || reply buttons


class UsersFeed extends StatelessWidget {
  
  const UsersFeed ({
    super.key,
    required this.userFeedAvatar,
    required this.userStatus,
    required this.userName,
    required this.userLikeCount,
    });

  final AssetImage userFeedAvatar;
  final Text userName;
  final Text userStatus;
  final Text userLikeCount;

  

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 300.0),
      child: Card( 
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 200.0,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [         
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           CircleAvatar(backgroundImage: userFeedAvatar),
                           const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [ 
                               Icon(Icons.more_horiz),
                               Icon(Icons.close)
                            ],
                           )
                           
                          ],
                        ),
                      
                      Align( 
                        alignment: Alignment.centerLeft,
                        child: userStatus
                      ),
        
                      Align(
                        alignment:Alignment.centerLeft,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.thumb_up_sharp, color: Colors.blue),
                          userLikeCount
                          ],
                        )
                      ),
        
                      const Divider(
                        color: Colors.black,
                        thickness:0.9,
                      ),
        
                       SizedBox(           
                        height: 20.0,             
                        child: Expanded(                  
                          child:                        
                             Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: const Text('Like')
                                ),
                                 Container(
                                  child: const Text('Comment')
                                ),
                                 Container(
                                  child: const Text('Share')
                                ),
                              ],
                            )                        
                          
                        )
                      )
                        
        
            ]
          ),
        )
      )
    );
  }
}




