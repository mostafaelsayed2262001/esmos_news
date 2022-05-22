import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  ListviewWidget(
      {required this.url, required this.title, required this.time, Key? key})
      : super(key: key);

  var url;

  String title = '';
  String time = '';

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: mq.height * 0.15,
            width: mq.width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: url == null?
                    NetworkImage( 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/300px-No_image_available.svg.png',):
                    NetworkImage( '${url}'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: mq.height * 0.151,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green.shade500,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
