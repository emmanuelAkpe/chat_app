import 'package:flutter/material.dart';
import 'package:security_app/model/post_item.dart';
import 'package:security_app/widgets/post_component.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PostItem> posts = [
    PostItem(
        post_desc:
            'The Ghanaian smock, also known as the Batakari, is a traditional garment worn by men and women in Ghana. It is made of handwoven cotton fabric and usually features bold, colorful patterns and designs. The smock is typically worn as a loose-fitting tunic over pants, and is often accessorized with a matching hat or headwrap. It is an important cultural symbol in Ghanaian society and is often worn during special occasions such as weddings and festivals. The production of the smock is a significant part of the country\'s textile industry and provides employment for many artisans and weavers.',
        post_img: 'images/woman.jpg',
        post_time: '5 minutes ago',
        user_name: 'Star Emak',
        user_role: 'Frontend Developer ',
        user_avatar: 'images/hen.png'),
    PostItem(
        post_desc:
            'A boy in Ghana may grow up in a tight-knit community, surrounded by family and friends. He may attend school and enjoy playing sports, such as soccer, which is very popular in Ghana. He may help his family with chores, such as fetching water or helping with farming. He may wear traditional clothing, such as a smock, or modern clothing depending on the occasion. He may have dreams of becoming a doctor, teacher, or musician. Overall, a boy in Ghana is shaped by his culture and experiences, but like any boy, he has his own unique personality and aspirations.',
        post_img: 'images/ghana.jpg',
        post_time: '1 hour ago',
        user_name: 'Emefa Hose',
        user_role: 'CEO @ ManDem',
        user_avatar: ''),
    PostItem(
        post_desc:
            'Ghana is a country of warmth and vibrancy, with a rich cultural heritage and a people that exude friendliness and hospitality. From the bustling streets of Accra to the serene beaches of Cape Coast, Ghana offers a diverse range of experiences to visitors. Whether it is  exploring the history of the slave trade at Elmina Castle, hiking to the top of Mount Afadjato, or simply enjoying the delicious local cuisine, there is always something to do and see in Ghana. And above all, the people of Ghana are what make this country truly special - their kindness, resilience, and sense of community make it a truly sweet and welcoming place.',
        post_img: 'images/boy.jpg',
        post_time: '3 hours ago',
        user_name: 'Nii Mosey',
        user_role: ' @ Mafia Zongo',
        user_avatar: 'images/login.png')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          PostItem item = posts[index];
          return PostComponent(item: item);
        });
  }
}
