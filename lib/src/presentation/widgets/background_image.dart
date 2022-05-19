import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://cdn.pastemagazine.com/www/system/images/photo_albums/best-movie-posters-2016/large/moonlight-ver2-xlg.jpg?1384968217"                      )
              )
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.add),
                  Text("Play",
                  )
                ],
              ),
              TextButton.icon(onPressed: (){},
                icon: Icon(Icons.play_arrow,color: Colors.black,),
                label: Text("Play",
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold),),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                ),),
              Column(
                children: [
                  Icon(Icons.info_outline),
                  Text("Info",
                  )
                ],
              ),
            ],
          ),
        )
      ],
    )
    ;
  }
}
