import 'package:jaspr/browser.dart';
import 'package:jaspr_bench/data.dart';
import 'package:jaspr_bench/jumbotron.dart';

void main() {
  runApp(const App(), attachTo: '#main');
}

class App extends StatefulComponent {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _data = <DataItem>[];
  String? _selected;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container', [
      Jumbotron(
        run: _run,
        runLots: _runLots,
        append: _append,
        update: _update,
        swap: _swap,
        clear: _clear,
      ),
      DomComponent(tag: 'table', classes: 'table table-hover table-striped test-data', children: [
        DomComponent(key: ValueKey(_data.isNotEmpty), tag: 'tbody', children: [
          for (var dataItem in _data)
            ItemRow(
              key: ValueKey(dataItem.idString),
              dataItem: dataItem,
              selected: _selected == dataItem.idString,
              onSelect: (_) => _select(dataItem),
              onRemove: (_) => _remove(dataItem),
            ),
        ]),
      ]),
    ]);
  }

  void _run(dynamic event) {
    setState(() {
      _data = buildData(1000);

      _selected = null;
    });
  }

  void _runLots(dynamic event) {
    setState(() {
      _data = buildData(10000);

      _selected = null;
    });
  }

  void _append(dynamic event) {
    setState(() {
      _data.addAll(buildData(1000));
    });
  }

  void _update(dynamic event) {
    setState(() {
      for (var i = 0; i < _data.length; i += 10) {
        var item = _data[i];

        _data[i] = DataItem(item.label + ' !!!', id: item.id);
      }
    });
  }

  void _clear(dynamic event) {
    setState(() {
      _data.clear();

      _selected = null;
    });
  }

  void _swap(dynamic event) {
    setState(() {
      var temp = _data[1];
      _data[1] = _data[998];
      _data[998] = temp;
    });
  }

  void _select(DataItem dataItem) {
    setState(() {
      _selected = dataItem.idString;
    });
  }

  void _remove(DataItem dataItem) {
    setState(() {
      _data.remove(dataItem);
    });
  }
}

class ItemRow extends StatelessComponent {
  const ItemRow({
    required this.selected,
    required this.dataItem,
    required this.onSelect,
    required this.onRemove,
    Key? key,
  }) : super(key: key);

  final bool selected;
  final DataItem dataItem;
  final EventCallback onSelect;
  final EventCallback onRemove;

  @override
  bool shouldRebuild(ItemRow newComponent) {
    return selected != newComponent.selected || dataItem != newComponent.dataItem;
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'tr', classes: selected ? 'danger' : '', children: [
      DomComponent(
        tag: 'td',
        classes: 'col-md-1',
        child: Text(dataItem.idString),
      ),
      DomComponent(
        tag: 'td',
        classes: 'col-md-4',
        child: DomComponent(
          tag: 'a',
          events: {'click': onSelect},
          child: Text(dataItem.label),
        ),
      ),
      DomComponent(
        tag: 'td',
        classes: 'col-md-1',
        child: DomComponent(
          tag: 'a',
          events: {'click': onRemove},
          child: const DomComponent(
            tag: 'span',
            classes: 'glyphicon glyphicon-remove',
            attributes: {'aria-hidden': 'true'},
          ),
        ),
      ),
      const DomComponent(
        tag: 'td',
        classes: 'col-md-6',
      ),
    ]);
  }
}
