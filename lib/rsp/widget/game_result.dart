
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/result.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback reStart;

  const GameResult({required this.isDone, super.key, this.result, required this.reStart});
  
  @override
  Widget build(BuildContext context) {
    if (isDone){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          TextButton(
              onPressed: () => reStart.call(),
              child: const Text('다시 하기',style: TextStyle(fontSize: 24),)
          )
        ],
      );
    }
    
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택 해 주세요.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
