import 'sizeConfig.dart';
import 'package:flutter/material.dart';

class ClassRoomBackCard extends StatelessWidget {
  final String contactInformationEmail;
  final String contactInformationPhone;
  final Function onPhoneTapped;
  const ClassRoomBackCard({
    Key key,
    @required this.contactInformationEmail,
    @required this.contactInformationPhone,
    @required this.onPhoneTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: SizeConfig.horizontalBloc * 90,
          height: SizeConfig.safeBlockVertical * 15,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Text(
                    'Contact Information :',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300],
                    ),
                  ),
                )),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      width: SizeConfig.safeBlockHorizontal * 80,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Text(
                                contactInformationEmail +
                                    '\n' +
                                    contactInformationPhone,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.black),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: InkWell(
                              onTap: onPhoneTapped,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Icon(
                                  Icons.phone,
                                  size: SizeConfig.safeBlockHorizontal * 9,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
