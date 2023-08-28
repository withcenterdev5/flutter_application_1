import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_built/body_section_feed.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView( 
        scrollDirection: Axis.vertical,
        children: [
          profilePostCard,
          storyContainer,
          const UsersFeed(
               userFeedAvatar:  AssetImage('lib/assets/planet.avif'),
               userLikeCount:  Text('4'),
               userName:  Text('Planet'),
               userStatus:  Text('Hello, I am planet your godfather thank you', textAlign: TextAlign.left,),       
          ),
          const UsersFeed( 
              userFeedAvatar: AssetImage('lib/assets/planet1.avif'),
              userLikeCount: Text('1'),
              userName: Text('Planet1'),
              userStatus: Text('Im a cool planet!', textAlign: TextAlign.left),
          ),
          const UsersFeed( 
              userFeedAvatar: AssetImage('lib/assets/planet2.avif'),
              userLikeCount: Text('2'),
              userName: Text('Planet2'),
              userStatus: Text('AAlllieeens!!'), 
          )
        ],
      ),
    );
  }
}

Card profilePostCard = Card(
  surfaceTintColor: Colors.amber,
  color: Colors.white,
  margin: const EdgeInsets.only(left: 2.0, right: 2.0, top: 2.0),
  child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400.0, maxHeight: 50.0),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage('lib/assets/astronaut.avif'),
                ),
                SizedBox(
                    width: 250,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Something'))),
                Icon(Icons.add_a_photo_sharp)
              ]))),
);


class StoryCard extends StatelessWidget {
  const StoryCard(
                  { super.key, 
                    required this.userBackground,
                    required this.userAvatar, 
                    required this.userName
                  }
                 );

  final AssetImage userBackground;
  final CircleAvatar userAvatar;
  final Text userName;


  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:const BoxConstraints( 
        maxHeight: 150.0,
        maxWidth: 150.0,
      ),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Card( 
          margin: const EdgeInsets.only(left: 2.0, right: 2.0, top: 2.0),
          child: Container(
            
            width: 100.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage( 
                image: userBackground,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5.0)
            ),
            child:  Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userAvatar,
                  userName,
                ],
              ),
            )
          )
        ),
      )
    );
  }
}

SingleChildScrollView storyContainer = SingleChildScrollView( 
  scrollDirection: Axis.horizontal,
  child: Container(
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
    child: const Row( 
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StoryCard(
                  userName: Text('Planet1', style: TextStyle(color: Colors.white) ), 
                  userAvatar: CircleAvatar(backgroundImage: AssetImage('lib/assets/planet.avif'),),
                  userBackground: AssetImage('lib/assets/planet1.avif'),),
        StoryCard(
                  userName: Text('Planet2', style: TextStyle(color: Colors.white)),
                  userAvatar: CircleAvatar(backgroundImage: AssetImage('lib/assets/planet2.avif'),),
                  userBackground: AssetImage('lib/assets/planet3.avif'),
        ),
        StoryCard(
                  userName: Text('Planet3', style: TextStyle(color: Colors.white)),
                  userAvatar: CircleAvatar(backgroundImage: AssetImage('lib/assets/planet4.avif')),
                  userBackground: AssetImage('lib/assets/planet5.avif'),
        ),
        StoryCard( 
                  userName: Text('Planet4', style: TextStyle(color: Colors.white)),
                  userAvatar: CircleAvatar(backgroundImage: AssetImage('lib/assets/planet6.avif')),
                  userBackground: AssetImage('lib/assets/planet7.avif'),
        ),
        StoryCard(
                  userName: Text('Planet5', style: TextStyle(color: Colors.white)),
                  userAvatar: CircleAvatar(backgroundImage: AssetImage('lib/assets/planet8.avif')),
                  userBackground: AssetImage('lib/assets/planet9.avif'),
        )
      ],
    ),
  )
);
