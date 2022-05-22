import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen(
      {Key? key,
      required this.url,
      required this.title,
      required this.description,
      required this.publisher,
      required this.time})
      : super(key: key);
  String publisher = '';
  String title = '';
  String description = '';
  var url = '';
  String time = '';

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: mq.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: url == null
                      ? NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/300px-No_image_available.svg.png',
                        )
                      : NetworkImage('$url'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$title',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade900),
              maxLines: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$description   ',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$publisher',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade500),
                  maxLines: 2,
                ),
                Text(
                  '$time',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade500),
                  maxLines: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
