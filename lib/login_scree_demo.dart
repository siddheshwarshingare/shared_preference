import 'package:flutter/material.dart';

class LoginScreeDemo extends StatefulWidget {
  final String userNeme;
  final String passWord;

  const LoginScreeDemo(
      {super.key, required this.userNeme, required this.passWord});

  @override
  State<LoginScreeDemo> createState() => _LoginScreeDemoState();
}

class _LoginScreeDemoState extends State<LoginScreeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Username =${widget.userNeme}"),
            Text("Username =${widget.passWord}")
          ],
        ),
      ),
    );
  }
}

// void checkForIsUserBlock() {
//   debugPrint('checkForIsUserBlock');
//   if (personalChatMessages.isNotEmpty) {
//     ChatMessageModel lastMessage = personalChatMessages.last;

//     if (lastMessage.blockedby ==
//         PPSingletonClass.instance.loggedInUser?.registerId) {
//       isUserBlockedByMe = false;
//       isImBlockedByUser = false;
//       if (lastMessage.blockedby ==
//           PPSingletonClass.instance.loggedInUser?.registerId) {
//         print("1!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//         isUserBlockedByMe = true;
//       }
//       if (lastMessage.blockedby == widget.profileData.basicInfo?.regid) {
//         print("2!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//         isImBlockedByUser = true;
//       }
//       if (mounted) {
//         setState(() {});
//       }
//     } else {
//       debugPrint('Chat is not blocked by anyone');
//       scrollToBottom();
//     }
//   }
// }
