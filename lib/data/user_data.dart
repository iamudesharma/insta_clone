class UserStory {
  late final String name;
  late final String videoorPhoto;
  late final String profile;
  UserStory({
    required this.name,
    required this.videoorPhoto,
    required this.profile,
  });
}

class Feed {
  late final int likes;
  late final List<String> comments;
  final UserStory user;
  // late final String profilename;
  // late final String photoorVideo;
  // late final String profilePhoto;
  Feed({
    required this.likes,
    required this.comments,
    required this.user,
    // required this.profilename,
    // required this.photoorVideo,
    // required this.profilePhoto,
  });
}

List<Feed> feed = [
  Feed(
    likes: 303,
    comments: ['Hi good look', 'Omg🆕', 'I love u'],
    user: userStory[1],
  ),
  Feed(
    likes: 200,
    comments: [
      'Hi',
      'hello ${userStory.elementAt(2).name}',
    ],
    user: userStory.elementAt(2),
  ),
  Feed(
    likes: 209,
    comments: [
      'Hi',
      'hello ${userStory.elementAt(3).name}',
    ],
    user: userStory.elementAt(3),
  ),
  Feed(
    likes: 299,
    comments: [
      'Hi',
      'hello ${userStory.elementAt(4).name}',
    ],
    user: userStory.elementAt(4),
  )
];

List<UserStory> userStory = [
  UserStory(
    name: 'Your Stroy',
    videoorPhoto: '',
    profile: '',
  ),
  UserStory(
    name: 'Vijay Yadav',
    videoorPhoto: 'assets/images/vijay__yadav.jpg',
    profile: 'assets/images/vijay__yadav_.jpg',
  ),
  UserStory(
    name: 'Anshu roy',
    videoorPhoto: 'assets/images/anshu_roy_p.jpg',
    profile: 'assets/images/anshu_roy_p.jpg',
  ),
  UserStory(
    name: 'ndr_Singh',
    videoorPhoto: 'assets/images/ndr.jpg',
    profile: 'assets/images/ndr.jpg',
  ),
  UserStory(
    name: 'Rahul Kumar',
    videoorPhoto: 'assets/images/rahul.kum_r.jpg',
    profile: 'assets/images/rahul.kum_p.jpg',
  ),
  UserStory(
    name: 'Saurav_rajput',
    videoorPhoto: 'assets/images/Saurav_rajput.jpg',
    profile: 'assets/images/01_Saurav_rajput_p.jpg',
  )
];
// class AdminStrory{}
