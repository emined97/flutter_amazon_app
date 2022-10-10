import 'package:flutter/material.dart';

class FirsatCard extends StatelessWidget {
  const FirsatCard({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return   Container(
                          height: MediaQuery.of(context).size.height / 3.3,
                          width: MediaQuery.of(context).size.width / 1.8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              widget,
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height / 30,
                                      width: MediaQuery.of(context).size.width /3,
                                      color: Colors.red[900],
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Maksimum - %10',style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text('Fırsat',style: TextStyle(color: Colors.red[900]),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
  }
}