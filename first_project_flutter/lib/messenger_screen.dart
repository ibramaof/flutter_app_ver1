import 'package:flutter/material.dart';

class ChatItem {
  final String name;
  final String avatarUrl;
  final String lastMessage;
  final String time;

  ChatItem({
    required this.name,
    required this.avatarUrl,
    required this.lastMessage,
    required this.time,
  });
}

class MessengerScreen extends StatelessWidget {
  MessengerScreen({super.key});
  final List<ChatItem> chatItems = [
    ChatItem(
      name: 'Alex Carter',
      avatarUrl: 'https://i.pravatar.cc/150?img=11',
      time: '2:14 pm',
      lastMessage: 'Sent a photo.',
    ),
    ChatItem(
      name: 'Daniel Moore',
      avatarUrl: 'https://i.pravatar.cc/150?img=22',
      time: '11:03 am',
      lastMessage: 'Okay, sounds good.',
    ),
    ChatItem(
      name: 'Emily Watson',
      avatarUrl: 'https://i.pravatar.cc/150?img=33',
      time: '8:45 am',
      lastMessage: 'Shared a file.',
    ),
    ChatItem(
      name: 'Mom',
      avatarUrl: 'https://i.pravatar.cc/150?img=44',
      time: 'Sat',
      lastMessage: 'The audio call ended.',
    ),
    ChatItem(
      name: 'Sophia Turner',
      avatarUrl: 'https://i.pravatar.cc/150?img=55',
      time: 'Sat',
      lastMessage: 'Missed voice call.',
    ),
    ChatItem(
      name: 'Dad',
      avatarUrl: 'https://i.pravatar.cc/150?img=66',
      time: 'Sat',
      lastMessage: 'The audio call ended.',
    ),
    ChatItem(
      name: 'Michael Brown',
      avatarUrl:
          'https://c8.alamy.com/comp/P6YB2N/los-angeles-usa-june-29-unidentified-random-people-in-the-streets-of-downtown-of-los-angeles-ca-on-june-29-2018-P6YB2N.jpg',
      time: 'Fri',
      lastMessage: 'I will call you later.',
    ),
    ChatItem(
      name: 'Olivia Harris',
      avatarUrl:
          'https://plus.unsplash.com/premium_photo-1689551670902-19b441a6afde?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
      time: 'Thu',
      lastMessage: 'Let me know when you are free.',
    ),
    ChatItem(
      name: 'James Wilson',
      avatarUrl:
          'https://media.istockphoto.com/id/2172873491/photo/university-student-and-man-in-portrait-outdoor-on-campus-with-book-for-education-learning-and.jpg?s=612x612&w=0&k=20&c=0jJ62Pxg9qWg2DKCl0pVQmN1j618h01SXJ7DGdlpsZM=',
      time: 'Wed',
      lastMessage: 'Did you finish the task?',
    ),
    ChatItem(
      name: 'Alex Carter',
      avatarUrl: 'https://i.pravatar.cc/150?img=11',
      time: 'Mon',
      lastMessage: 'Sent a photo.',
    ),
    ChatItem(
      name: 'Daniel Moore',
      avatarUrl: 'https://i.pravatar.cc/150?img=22',
      time: 'Mon',
      lastMessage: 'Okay, sounds good.',
    ),
    ChatItem(
      name: 'Emily Watson',
      avatarUrl: 'https://i.pravatar.cc/150?img=33',
      time: 'Mon',
      lastMessage: 'Shared a file.',
    ),
    ChatItem(
      name: 'Mom',
      avatarUrl: 'https://i.pravatar.cc/150?img=44',
      time: 'Mon',
      lastMessage: 'The audio call ended.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsetsDirectional.only(start: 5, top: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAp3Z1hXfTVTKtbw3vE75-rtfr1ZCFcPSw4A&s',
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Chats',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            style: IconButton.styleFrom(backgroundColor: Colors.grey[100]),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              style: IconButton.styleFrom(backgroundColor: Colors.grey[200]),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(width: 0, color: Colors.white),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => rowItems(chatItems[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: chatItems.length,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => columeItems(chatItems[index]),
              separatorBuilder: (context, index) => SizedBox(height: 15),
              itemCount: chatItems.length,
            ),
          ],
        ),
      ),
    );
  }

  Widget rowItems(ChatItem model) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(model.avatarUrl),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 4),
                child: CircleAvatar(radius: 5, backgroundColor: Colors.green),
              ),
            ],
          ),
          Text(
            model.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget columeItems(ChatItem model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(model.avatarUrl),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 4),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            model.lastMessage,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(model.time),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
