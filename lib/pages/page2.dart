import 'package:flutter/material.dart';
import 'package:koko2_ratkum/utils/page2Utils.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  //initstate the animation controller
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool videoPlaying = false;

  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

//LiquidPullToRefresh
  Future _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: LiquidPullToRefresh(
        showChildOpacityTransition: false,
        animSpeedFactor: 2,
        backgroundColor: Colors.blue[200],
        height: 200,
        color: Colors.red,
        onRefresh: _handleRefresh,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  color: Colors.red,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        _iconTapped();
                      },
                      child:  Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[200],
                        ),
                        child: Center(
                          child: AnimatedIcon(
                            icon: AnimatedIcons.close_menu,
                            progress: _animationController,
                            size: 72.0,
                            semanticLabel: 'Show menu',
                          ),
                        ),
                      )
                    
                    ),
                  ),
                ),
              ),
            ),
  

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  color: Colors.red,
                   child: Center(
                    child: GestureDetector(
                      onTap: () {
                        _iconTapped();
                      },
                      child:  Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[200],
                        ),
                        child: Center(
                          child: AnimatedIcon(
                            icon: AnimatedIcons.close_menu,
                            progress: _animationController,
                            size: 72.0,
                            semanticLabel: 'Show menu',
                          ),
                        ),
                      )
                    
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  color: Colors.red,
                   child: Center(
                    child: GestureDetector(
                      onTap: () {
                        _iconTapped();
                      },
                      child:  Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[200],
                        ),
                        child: Center(
                          child: AnimatedIcon(
                            icon: AnimatedIcons.close_menu,
                            progress: _animationController,
                            size: 72.0,
                            semanticLabel: 'Show menu',
                          ),
                        ),
                      )
                    
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
