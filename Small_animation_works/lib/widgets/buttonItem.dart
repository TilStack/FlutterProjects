import 'package:flutter/material.dart';

class ButtonItem extends StatefulWidget {
  const ButtonItem({super.key, required this.child, required this.color});

  final Widget child;
  final Color color;

  @override
  State<ButtonItem> createState() => _ButtonItemState();
}

class _ButtonItemState extends State<ButtonItem>
    with SingleTickerProviderStateMixin {
  late AnimationController controller; // Animation controller

  @override
  void initState() {
    //How to initialize the animation controller
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    print(controller.value); // How to get the value of the controller
    controller.repeat(); // How to repeat the animation
  }

  @override
  void dispose() {
    /// How to dispose the animation controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
            gradient: LinearGradient(stops: [
              0.0,
              controller.value,
              1.0
            ], colors: [
              Colors.white,
              widget.color,
              Colors.black,
            ], begin: Alignment.centerRight, end: Alignment.centerLeft),
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: widget.child,
          ),
        );
      },
    ));
  }
}
