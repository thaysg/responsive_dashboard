import 'package:flutter/material.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/infra/data.dart';

class CustomSearchDelegate extends SearchDelegate {
  //HomeController controller = Get.find();
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: background),
      scaffoldBackgroundColor: background,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: secondaryDark),
    );
  }

  List<String> searchInfoTable = List.generate(
    transactionHistory.length,
    (index) {
      return transactionHistory[index]["name"]!;
    },
  );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.clear,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.chevron_left,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var name in searchInfoTable) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    //return //Container();

    return ListView.builder(
      padding: const EdgeInsets.only(top: 16.0),
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          /* leading: ImageNetworkAvatar(
            imagePath: transactionHistory[index]["avatar"]!,
          ), */
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var name in searchInfoTable) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(
      padding: const EdgeInsets.only(top: 16.0),
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];

        return ListTile(
          leading: const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
            /* ImageNetworkAvatar(
              imagePath: transactionHistory[index]["avatar"]!,
            ), */
          ),
          title: Text(result),
        );
      },
    );

    /*   */
    /*
    if (query.length >= 3) {
      return FutureBuilder<List<Users>>(
        future: controller.searchedUser(query),
        builder: (contex, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              snapshot.connectionState == ConnectionState.done;
              final suggestions = query.isEmpty
                  ? snapshot.data!.map<Users>((e) => e).toList()
                  : snapshot.data!
                      .where((city) {
                        final userLower = city.name.toLowerCase();
                        final queryLower = query.toLowerCase();
                        return userLower.startsWith(queryLower);
                      })
                      .map<Users>(
                        (e) => e,
                      )
                      .toList();

              return buildSuggestionsSuccess(suggestions);
          }
        },
      );
    }
    return const SizedBox();
    */
  }

  /* buildSuggestionsSuccess(List<Users> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ImageNetworkAvatar(
              imagePath: controller.searchedUser(users[index].avatar),
            ),
          ),
          title: Text(users[index].name),
          onTap: () {
            controller.searchedUser(
              users[index].name,
            );
            close(context, '');
          },
        );
      },
    );
  } */
}
