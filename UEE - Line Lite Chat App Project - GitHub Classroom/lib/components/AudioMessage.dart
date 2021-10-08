import 'package:Line_Lite/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;

  const AudioMessage({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
        horizontal: 22.0 * 0.75,
        vertical: 22.0 / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue.withOpacity(message.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : Colors.blue ,
          ),
          Expanded(
            child:Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 22.0/2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children:[
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender
                        ? Colors.white
                        :Colors.blue.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child:  Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color:message.isSender
                            ? Colors.white
                            : Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "0.33",
            style: TextStyle(
                fontSize: 12,
                color: message.isSender ? Colors.white : null
            ),
          ),
        ],
      ),
    );
  }
}
