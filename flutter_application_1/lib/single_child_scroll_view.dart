import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils.dart';

class SingleChildScrollViewExample extends StatefulWidget {
  const SingleChildScrollViewExample({Key? key}) : super(key: key);

  @override
  _SingleChildScrollViewExampleState createState() =>
      _SingleChildScrollViewExampleState();
}

class _SingleChildScrollViewExampleState
    extends State<SingleChildScrollViewExample> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();
    controller.addListener(
      () {
        print(controller.offset);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Text(
                'fiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwa'),
            for (final item in fakeData(100, true)) item,
            Text(
                'fiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwafiarekhg  areofuhareaewrh hawef airfa fa f oawrofhawiofhawihfihurf wf akwefhwa'),
          ],
        ),
      ),
    );
  }
}
