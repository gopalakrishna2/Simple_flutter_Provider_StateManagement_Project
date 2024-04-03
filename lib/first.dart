import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:providers/count_provider.dart";
import "package:providers/second.dart";

class Providers extends StatefulWidget {
  const Providers({super.key});

  @override
  State<Providers> createState() => _ProvidersState();
}

class _ProvidersState extends State<Providers> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CountListProvider>(
      builder: (context, countListModel, child) => 
      Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              countListModel.add();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text('provider'),
          ),
          body: SizedBox(
            child: Column(
              children: [
                Text(countListModel.count.last.toString()),
                Expanded(
                  child: ListView.builder(
                    itemCount:countListModel.count.length,
                    itemBuilder: ((context, index) {
                      return Text(countListModel.count[index].toString());
                    }),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Second(),
                      ),
                    );
                  },
                  child: const Text('Second'),
                )
              ],
            ),
          ),
        ),
    );
  }
}
