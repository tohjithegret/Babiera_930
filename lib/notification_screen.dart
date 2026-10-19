import 'package:flutter/material.dart';
import 'package:babiera_930/components/globalappbarcomponent.dart';
import 'package:babiera_930/components/noification_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = [
    {
      "username": "John Doe",
      "message": "liked your post.",
      "time": "5 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Jane Smith",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Michael Cruz",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Sarah Williams",
      "message": "shared your post.",
      "time": "1 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Alex Santos",
      "message": "mentioned you in a comment.",
      "time": "2 hours ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "David Lee",
      "message": "started following you.",
      "time": "5 hours ago",
      "type": "follow",
      "read": false,
    },
    {
      "username": "Emily Johnson",
      "message": "liked your photo.",
      "time": "6 hours ago",
      "type": "like",
      "read": true,
    },
    {
      "username": "Robert Garcia",
      "message": "started following you.",
      "time": "7 hours ago",
      "type": "follow",
      "read": false,
    },
    {
      "username": "Sophia Martinez",
      "message": "commented on your story.",
      "time": "8 hours ago",
      "type": "comment",
      "read": true,
    },
    {
      "username": "Daniel Kim",
      "message": "shared your profile.",
      "time": "9 hours ago",
      "type": "share",
      "read": false,
    },
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "like":
        return Icons.thumb_up_sharp;
      case "comment":
        return Icons.comment;
      case "friend_request":
        return Icons.person_add;
      case "share":
        return Icons.share;
      case "mention":
        return Icons.alternate_email;
      case "follow":
        return Icons.person;
      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalappbarComponent(),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"] as String,
            message: notification["message"] as String,
            time: notification["time"] as String,
            icon: _iconForType(notification["type"] as String?),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}
