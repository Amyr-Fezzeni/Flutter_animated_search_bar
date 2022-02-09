# AnimatedSearchBar [![pub package](https://img.shields.io/pub/v/search_bar_animated.svg)](https://pub.dev/packages/search_bar_animated)

A flutter package that has an animated search bar animation transformation.
It can be fully customized.
![Animated Searchbar Demo](gifs/searchbar.gif)

## Usage Examples

```
 List list = [
   "Flutter",
   "Twitter",
   "Facebook",
   "Google",
   "Instagram",
   "Youtube",
 ];

AnimatedSearchBar(
             shadow: const [
               BoxShadow(
                   color: Colors.black38, blurRadius: 6, offset: Offset(0, 6))
             ],
             backgroundColor: Colors.white,
             buttonColor: Colors.blue,
             width: MediaQuery.of(context).size.width * 0.7,
             submitButtonColor: Colors.blue,
             textStyle: const TextStyle(color: Colors.blue),
             buttonIcon: const Icon(
               Icons.search,
             ),
             duration: const Duration(milliseconds: 1000),
             submitIcon: const Icon(Icons.send),
             animationAlignment: AnimationAlignment.left,
             onSubmit: () {
               setState(() {
                 value = textController.text;
               });
             },
             searchList: list,
             searchQueryBuilder: (query, list) => list.where((item) {
               return item!
                   .toString()
                   .toLowerCase()
                   .contains(query.toLowerCase());
             }).toList(),
             textController: textController,
             overlaySearchListItemBuilder: (dynamic item) => Container(
               padding: const EdgeInsets.all(8),
               child: Text(
                 item,
                 style: const TextStyle(fontSize: 15, color: Colors.black),
               ),
             ),
             onItemSelected: (dynamic item) {
               textController.value = textController.value.copyWith(
                 text: item.toString(),
               );
             },
             overlaySearchListHeight: 100,
           ),
```

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```` 
search_bar_animated: "^latest_version"
````
in your Dart code, you can use:
````
import 'package:search_bar_animated/search_bar_animated.dart';
````

## Available Parameters

| Param                                                                   | isRequired |
| ----------------------------------------------------------------------- | ---------- |
| **List of widgets** searchList                                          | yes        |
| **Function(dynamic)** overlaySearchListItemBuilder                      | yes        |
| **Function(query,list) => list** searchQueryBuilder                     | yes        |
| **Icon** buttonIcon                                                     | yes        |
| **Icon** submitIcon                                                     | yes        |
| **Function** onSubmit                                                   | yes        |
| **Duration** duration, *Default is 1 second*                            | No         |
| **double** width ,      *Default is 300*                                | No         |
| **String** hintText ,    *Default is "Search..."*                       | No         |
| **String** failMessage ,                                                | No         |
| **List of BoxShadow** shadow ,                                          | No         |
| **Controller** textController                                           | No         |
| **AnimationAlignment(left or right)** animationAlignment                | No         |
| **Function(dynamic)** onItemSelected                                    | No         |
| **bool** hideSearchBoxWhenItemSelected    *Default is false*            | No         |
| **double** overlaySearchListHeight                                      | No         |
| **Widget** noItemsFoundWidget                                           | No         |
| **TextStyle** textStyle ,                                               | No         |
| **InputDecoration** searchBoxInputDecoration ,                          | No         |
| **Color** backgroundColor                *Default is white*             | No         |
| **Color** buttonColor ,                  *Default is black*             | No         |
| **Color** buttonBackgroundColor ,        *Default is transparent*       | No         |
| **Color** submitButtonColor ,            *Default is black*             | No         |
| **Color** submitButtonBackgroundColor ,  *Default is transparent*       | No         |

---

<br><br>
