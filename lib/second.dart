import "Package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:providers/count_provider.dart";

void main() {
  runApp(const Second());
}

class Second extends StatefulWidget {
  const Second({
    super.key,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer<CountListProvider>(
        builder: (context, secondCountList, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              secondCountList.add();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text('provider'),
          ),
          body: SizedBox(
            child: Column(
              children: [
                Text(secondCountList.count.last.toString()),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: secondCountList.count.length,
                    itemBuilder: ((context, index) {
                      return Text(secondCountList.count[index].toString());
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
