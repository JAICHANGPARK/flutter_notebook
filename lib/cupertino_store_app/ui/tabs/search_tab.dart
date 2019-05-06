import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/cupertino_store_app/model/app_state_model.dart';
import 'package:flutter_notebook/cupertino_store_app/styles/app_styles.dart';
import 'package:flutter_notebook/cupertino_store_app/ui/widgets/product_row_item.dart';
import 'package:flutter_notebook/cupertino_store_app/ui/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  TextEditingController _controller;
  FocusNode _focusNode;
  String _terms = '';

  void _onTextChanged() {
    setState(() {
      _terms = _controller.text;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()..addListener(_onTextChanged);
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Widget _buildSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SearchBar(
        controller: _controller,
        focusNode: _focusNode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context);
    final results = model.search(_terms);

    return DecoratedBox(
      decoration: BoxDecoration(color: Styles.scaffoldBackground),
      child: SafeArea(
          child: Column(
        children: <Widget>[
          _buildSearchBox(),
          Expanded(
            child: ListView.builder(
              itemCount: results.length,
                itemBuilder: (context, index) => ProductRowItem(
                      index: index,
                      product: results[index],
                      lastItem: index == results.length - 1,
                    )),
          )
        ],
      )),
    );
  }
}
