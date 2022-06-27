import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/src/application/downloads/downloads_bloc.dart';
import 'package:netflix/src/presentation/widgets/appbar_widget.dart';
import 'package:netflix/src/utils/constants.dart';
import 'package:netflix/src/utils/utils.dart';

import '../widgets/download_button.dart';
import '../widgets/smart_downloads.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPersistentFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context).add(const Started());
    });
    final Size size = MediaQuery.of(context).size;
    BlocProvider.of<DownloadsBloc>(context).add(const DownloadsEvent.started());
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight(context, dividedBy: 50),
                ),
                SmartDownloads(),
                SizedBox(
                  height: screenHeight(context, dividedBy: 50),
                ),
                const Text(
                  'Introducing Downloads for You',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: screenHeight(context, dividedBy: 70),
                ),
                const Text(
                  "We'll download a personalised selection of movies and shows for you. so these always something to watch on your device.",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: screenHeight(context, dividedBy: 40),
                ),
              ],
            ),
            BlocBuilder<DownloadsBloc, DownloadsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }

                return SizedBox(
                  width: 200,
                  height: 300,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        radius: screenWidth(context, dividedBy: 2.7),
                        backgroundColor: Colors.grey.withOpacity(0.5),
                      ),
                      RotationTransition(
                        turns: const AlwaysStoppedAnimation(-25 / 360),
                        child: Container(
                          height: 200,
                          width: 140,
                          margin: EdgeInsets.only(right: 130, bottom: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '$imageAppendUrl${state.downloads[0].posterPath}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      RotationTransition(
                        turns: const AlwaysStoppedAnimation(13 / 360),
                        child: Container(
                          height: 200,
                          width: 140,
                          margin: EdgeInsets.only(left: 150, bottom: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '$imageAppendUrl${state.downloads[1].posterPath}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Container(
                        height: 225,
                        width: 150,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  '$imageAppendUrl${state.downloads[2].posterPath}'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 20),
            ),
            DownloadButton(
              text: "Set Up",
              bColor: Color.fromARGB(255, 3, 84, 224),
              tSize: 15,
              width: screenWidth(context, dividedBy: 1),
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 20),
            ),
            DownloadButton(
              text: "Find More to Download",
              bColor: Color.fromARGB(255, 53, 50, 50),
              tSize: 16,
              width: screenWidth(context, dividedBy: 1.7),
            )
          ],
        ),
      ),
    );
  }
}
