import 'package:flutter/material.dart';
import 'package:test_app/widgets/text_subtitle.dart';
import 'package:test_app/widgets/text_title.dart';

class MusicCard extends StatelessWidget {
  final String trackName;
  final String artistName;
  final String collectionName;
  final String imageUrl;
  final void Function()? onTap;

  final IconData? icon;

  const MusicCard({
    Key? key,
    required this.trackName,
    required this.imageUrl,
    required this.collectionName,
    required this.artistName,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              child: Image.network(
                imageUrl,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextTitle(
                            title: trackName,
                          ),
                          TextSubTitle(
                            title: 'Artist: $artistName',
                          ),
                          TextSubTitle(
                            title: 'Album: $collectionName',
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: onTap,
                      child: Icon(
                        icon,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
