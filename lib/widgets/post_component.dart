import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:security_app/model/post_item.dart';

class PostComponent extends StatelessWidget {
  PostComponent({super.key, required this.item});
  PostItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 20, left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        item.user_avatar != ''
                            ? Container(
                                color: Colors.amber,
                                height: 65,
                                width: 65,
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(item.user_avatar),
                              )
                            : TextAvatar(
                                textColor: Colors.white,
                                text: item.user_name,
                                numberLetters: 1,
                                shape: Shape.Circular,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 65,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.user_name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 10),
                              Text(
                                item.user_role,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      // handle button press
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 10),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(item.post_img!, fit: BoxFit.cover),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: () {
                            // handle button press
                          },
                        ),
                        Text('23')
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.comment),
                          onPressed: () {
                            // handle button press
                          },
                        ),
                        Text('15')
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(item.post_time!),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(item.post_desc!),
          )
        ],
      ),
    );
  }
}
