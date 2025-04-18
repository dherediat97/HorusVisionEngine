import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:horus_vision_engine/presentation/ar_model/ar_model_entity.dart';
import 'package:horus_vision_engine/presentation/immersive_view/immersive_view.dart';

class ARModelPicker extends StatefulWidget {
  const ARModelPicker({super.key});

  @override
  State<ARModelPicker> createState() => _ARModelPickerState();
}

class _ARModelPickerState extends State<ARModelPicker> {
  late DropzoneViewController controller;
  bool isNavigationRailClose = false;
  int _selectedIndex = 0;
  int _modelSelectedIndex = 0;
  final models = List<ArModelEntity>.of([
    ArModelEntity(authorName: 'Film Flu', modelName: 'immersiveFilm'),
    ArModelEntity(authorName: 'vr-go', modelName: 'robotExpressive'),
    ArModelEntity(authorName: 'HeroCraft', modelName: 'squirrelGirl'),
  ]);

  @override
  Widget build(BuildContext context) {
    print(models[_modelSelectedIndex]);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  setState(() {
                    _toogleNavigationRail();
                  });
                },
              ),
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Badge(
                    label: Text(models.length.toString()),
                    child: Icon(Icons.rocket),
                  ),
                  label: Text('3D Models'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.preview),
                  label: Text('Preview'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 2, width: 1),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  switch (_selectedIndex) {
                    0 => Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemExtent: 75,
                        itemCount: models.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: ListTile(
                              title: Text('Model: ${models[index].modelName}'),
                              subtitle: Text(
                                'Author: ${models[index].authorName}',
                              ),
                              leading: Icon(Icons.rocket),
                              onTap: () {
                                setState(() {
                                  _modelSelectedIndex = index;
                                  _selectedIndex = 1;
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ),

                    1 => Expanded(
                      child: ImmersiveView(
                        modelSrc: models[_modelSelectedIndex].modelName,
                      ),
                    ),
                    _ => Text('Settings'),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _toogleNavigationRail() {
    isNavigationRailClose = !isNavigationRailClose;
    _selectedIndex = 0;
  }
}
