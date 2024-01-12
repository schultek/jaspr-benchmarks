import 'package:jaspr/jaspr.dart';
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
  DataItem? _selected;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'div', classes: const [
      'container'
    ], children: [
      Jumbotron(
        run: _run,
        runLots: _runLots,
        append: _append,
        prepend: _prepend,
        update: _update,
        swap: _swap,
        clear: _clear,
        moveToTop: _moveToTop,
        moveToBottom: _moveToBottom,
        addToTop: _addToTop,
        addToBottom: _addToBottom,
        add100ToTop: _add100ToTop,
        add100ToBottom: _add100ToBottom,
      ),
      DomComponent(tag: 'table', classes: const [
        'table',
        'table-hover',
        'table-striped',
        'test-data'
      ], children: [
        DomComponent(tag: 'tbody', children: [
          for (var dataItem in _data)
            ItemRow(
              key: ValueKey(dataItem.idString),
              dataItem: dataItem,
              selected: _selected == dataItem,
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

  void _prepend(dynamic event) {
    setState(() {
      _data.insertAll(0, buildData(1000));
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
      _selected = dataItem;
    });
  }

  void _remove(DataItem dataItem) {
    setState(() {
      _data.remove(dataItem);
    });
  }

  void _moveToTop(dynamic event) {
    setState(() {
      _data.insert(1, _data.removeAt(998));
    });
  }

  void _moveToBottom(dynamic event) {
    setState(() {
      _data.insert(998, _data.removeAt(1));
    });
  }

  void _addToTop(dynamic event) {
    setState(() {
      _data.insert(1, buildData(1).first);
    });
  }

  void _addToBottom(dynamic event) {
    setState(() {
      _data.insert(998, buildData(1).first);
    });
  }

  void _add100ToTop(dynamic event) {
    setState(() {
      _data.insertAll(1, buildData(100));
    });
  }

  void _add100ToBottom(dynamic event) {
    setState(() {
      _data.insertAll(998, buildData(100));
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemRow && runtimeType == other.runtimeType && selected == other.selected && dataItem == other.dataItem;

  @override
  int get hashCode => selected.hashCode ^ dataItem.hashCode;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'tr', classes: [
      if (selected) 'danger'
    ], children: [
      DomComponent(
        tag: 'td',
        classes: const ['col-md-1'],
        child: Text(dataItem.idString),
      ),
      DomComponent(
        tag: 'td',
        classes: const ['col-md-4'],
        child: DomComponent(
          tag: 'a',
          events: {'click': onSelect},
          child: Text(dataItem.label),
        ),
      ),
      DomComponent(
        tag: 'td',
        classes: const ['col-md-1'],
        child: DomComponent(
          tag: 'a',
          events: {'click': onRemove},
          child: const DomComponent(
            tag: 'span',
            classes: ['glyphicon', 'glyphicon-remove'],
            attributes: {'aria-hidden': 'true'},
          ),
        ),
      ),
      const DomComponent(
        tag: 'td',
        classes: ['col-md-6'],
      ),
    ]);
  }
}
