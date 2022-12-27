import 'package:flutter/material.dart';
import 'package:music_player/const_elements/const.dart';
import 'package:music_player/extension/song_model_extension.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicTile extends StatelessWidget {
  final SongModel songModel;

  const MusicTile({
    required this.songModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cBlackColor,
      child: ListTile(
        title: Text(
          songModel.displayNameWOExt,
          style:
          const TextStyle(fontWeight: FontWeight.bold, color: cWhiteColor),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          songModel.additionalSongInfo,
          style: const TextStyle(color: cLightPurple),
        ),
        leading: QueryArtworkWidget(
          id: songModel.id,
          type: ArtworkType.AUDIO,
          nullArtworkWidget: const Icon(
            Icons.music_note,
            color:cLightPurple,
          ),
        ),
      ),
    );
  }
}
