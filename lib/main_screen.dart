import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          Stack(
            alignment: const Alignment(0.7, -0.4),
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: () {},
              ),
              const Text(
                '9+',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const SizedBox(
            width: 30,
            height: 30,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg'),
            ),
          ),
        ],
        title: const Row(
          children: [
            Icon(
              Icons.smart_display,
              color: Colors.red,
              size: 30.0,
            ),
            SizedBox(
              width: 8,
            ),
            Text('YouTube'),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.white;
                              }
                              return Colors.grey;
                            },
                          ),
                        ),
                        child: const Icon(Icons.camera_outlined)),
                    const CategoryButton(
                      category: '전체',
                    ),
                    const CategoryButton(
                      category: '게임',
                    ),
                    const CategoryButton(
                      category: '뉴스',
                    ),
                    const CategoryButton(
                      category: '실시간',
                    ),
                    const CategoryButton(
                      category: '믹스',
                    ),
                    const CategoryButton(
                      category: '액션',
                    ),
                  ],
                ),
              ),
              const Video(
                thumbnailImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                profileImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                title: 'title',
                nickName: 'nickName',
              ),
              const Video(
                thumbnailImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                profileImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                title: 'title',
                nickName: 'nickName',
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.egg_alt_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Shorts',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Shorts(
                            thumbnailUrl:
                                'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                            title: 'title',
                            views: 'views'),
                        Shorts(
                            thumbnailUrl:
                                'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                            title: 'title',
                            views: 'views'),
                        Shorts(
                            thumbnailUrl:
                                'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                            title: 'title',
                            views: 'views'),
                        Shorts(
                            thumbnailUrl:
                                'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                            title: 'title',
                            views: 'views'),
                        Shorts(
                            thumbnailUrl:
                                'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                            title: 'title',
                            views: 'views'),
                      ],
                    ),
                  ),
                ],
              ),
              const Video(
                thumbnailImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                profileImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                title: 'title',
                nickName: 'nickName',
              ),
              const Video(
                thumbnailImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                profileImgUrl:
                    'https://cdn.pixabay.com/photo/2023/06/15/16/51/finch-8066014_1280.jpg',
                title: 'title',
                nickName: 'nickName',
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.egg_alt_outlined,
              color: Colors.white,
            ),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
            label: '1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions_outlined,
              color: Colors.white,
            ),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_outlined,
              color: Colors.white,
            ),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}

class Video extends StatelessWidget {
  final String thumbnailImgUrl;
  final String profileImgUrl;
  final String nickName;
  final String title;

  const Video({
    Key? key,
    required this.thumbnailImgUrl,
    required this.profileImgUrl,
    required this.title,
    required this.nickName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
      child: Column(
        children: [
          Image.network(
            thumbnailImgUrl,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profileImgUrl),
                  ),
                ),
                Column(
                  children: [
                    Text(nickName),
                    Text(title),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Shorts extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  final String views;
  const Shorts(
      {Key? key,
      required this.thumbnailUrl,
      required this.title,
      required this.views})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: SizedBox(
              height: 230,
              width: 150,
              child: Image.network(
                thumbnailUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 1.0, 1.0, 36.0),
            child: SizedBox(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                child: Text(
              '조회수 $views 회',
            )),
          )
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  const CategoryButton({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white;
                }
                return Colors.grey;
              },
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(category),
          )),
    );
  }
}
