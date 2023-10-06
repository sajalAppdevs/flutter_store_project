import 'package:flutter/material.dart';
import 'package:flutter_store_project/Shop/data/model/get_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final getAlbumsApi = GetData();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getAlbumsApi.getFetchedAlbums(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: AlertDialog(
                title: Text(snapshot.error.toString()),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData && snapshot.data!.isEmpty) {
            return const Center(
              child: AlertDialog(
                title: Text("There is no Data !"),
              ),
            );
          } else {
            final albums = snapshot.data;
            return ListView.builder(
              itemCount: albums!.length,
              itemBuilder: (context, index) {
                final album = albums[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(album.title),
                    subtitle: Text("The User id is ${album.id}"),
                  ),
                );
              },
            );
          }
        });
  }
}

/*  */
