class PostItem {
  String user_name;
  String user_role;
  String user_avatar;
  String? post_desc;
  String? post_img;
  String? post_time;

  PostItem({
    required this.user_name,
    required this.user_role,
    this.user_avatar = '',
    this.post_img = '',
    required this.post_desc,
    required this.post_time,
  });
}
