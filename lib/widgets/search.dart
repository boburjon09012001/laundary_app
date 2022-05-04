import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
class Things {
  final String name;
  final num cost;

  Things(this.name, this.cost);
}

class MySearchPage extends StatelessWidget {
  static List<Things> things = [
    Things('T-shirt',  30),
    Things('Trousers',  28),
    Things('Jacket',  72),
    Things('Dress',  45),
    Things('House furnitures',  100),
    Things('Tie',  16),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title:const Text(
          "Search",
          style: TextStyle(fontSize: 20.0,
              fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),

      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: things.length,
          itemBuilder: (context, index) {
            final Things person = things[index];
            return ListTile(
              title: Text(person.name),
              trailing: Text('${person.cost} dollor'),
            );
          },

        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search things',backgroundColor: Colors.blue,
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Things>(
            onQueryUpdate: (s) => print(s),
            items: things,
            searchLabel: 'Search things',
            suggestion:const Center(
              child: Text('Filter things by name  or cost', style: TextStyle(fontWeight: FontWeight.w700,
              ),),
            ),
            failure:const Center(
              child: Text('No things found :('),
            ),
            filter: (person) => [
              person.name,
              person.cost.toString(),
            ],
            builder: (person) => ListTile(
              title: Text(person.name),

              trailing: Text('${person.cost} dollor'),
            ),
          ),
        ),
        child: Icon(Icons.search),
      ),
    );
  }
}