import 'package:jaspr/jaspr.dart';

class Jumbotron extends StatelessComponent {
  const Jumbotron(
      {required this.run,
      required this.runLots,
      required this.update,
      required this.swap,
      required this.append,
      required this.clear,
      super.key});

  final EventCallback run;
  final EventCallback runLots;
  final EventCallback update;
  final EventCallback swap;
  final EventCallback append;
  final EventCallback clear;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'jumbotron', [
      div(classes: 'row', [
        div(classes: 'col-md-6', [
          h1([text('Jaspr (keyed)')])
        ]),
        div(classes: 'col-md-6', [
          div(classes: 'row', [
            div(classes: 'col-sm-6 smallpad', [
              button(
                id: 'run',
                classes: 'btn btn-primary btn-block',
                events: {'click': run},
                [text('Create 1,000 Rows')],
              )
            ]),
            div(classes: 'col-sm-6 smallpad', [
              button(
                id: 'runlots',
                classes: 'btn btn-primary btn-block',
                events: {'click': runLots},
                [text('Create 10,000 Rows')],
              )
            ]),
            div(classes: 'col-sm-6 smallpad', [
              button(
                id: 'update',
                classes: 'btn btn-primary btn-block',
                events: {'click': update},
                [text('Update every 10th Row')],
              )
            ]),
            div(classes: 'col-sm-6 smallpad', [
              button(
                id: 'swaprows',
                classes: 'btn btn-primary btn-block',
                events: {'click': swap},
                [text('Swap Rows')],
              )
            ]),
            div(classes: 'col-sm-6 smallpad', [
              button(
                id: 'add',
                classes: 'btn btn-primary btn-block',
                events: {'click': append},
                [text('Append 1,000 Rows')],
              )
            ]),
            div(classes: 'col-sm-6 smallpad', [
              button(
                id: 'clear',
                classes: 'btn btn-primary btn-block',
                events: {'click': clear},
                [text('Clear')],
              )
            ]),
          ])
        ])
      ]),
    ]);
  }
}
