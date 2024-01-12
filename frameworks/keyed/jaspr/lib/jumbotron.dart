import 'package:jaspr/jaspr.dart';

class Jumbotron extends StatelessComponent {
  const Jumbotron(
      {required this.run,
      required this.runLots,
      required this.update,
      required this.swap,
      required this.append,
      required this.prepend,
      required this.moveToTop,
      required this.moveToBottom,
      required this.addToTop,
      required this.addToBottom,
      required this.add100ToTop,
      required this.add100ToBottom,
      required this.clear,
      super.key});

  final EventCallback run;
  final EventCallback runLots;
  final EventCallback update;
  final EventCallback swap;
  final EventCallback append;
  final EventCallback prepend;
  final EventCallback moveToTop;
  final EventCallback moveToBottom;
  final EventCallback addToTop;
  final EventCallback addToBottom;
  final EventCallback add100ToTop;
  final EventCallback add100ToBottom;
  final EventCallback clear;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: const [
      'jumbotron'
    ], [
      div(classes: const [
        'row'
      ], [
        div(classes: [
          'col-md-6'
        ], [
          h1([text('Jaspr (keyed)')])
        ]),
        div(classes: const [
          'col-md-6'
        ], [
          div(classes: const [
            'row'
          ], [
            div(classes: const [
              'col-sm-6',
              'smallpad'
            ], [
              button(
                id: 'run',
                classes: const ['btn', 'btn-primary', 'btn-block'],
                events: {'click': run},
                [text('Create 1,000 Rows')],
              )
            ]),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'runlots',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': runLots},
                  [text('Create 10,000 Rows')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'update',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': update},
                  [text('Update every 10th Row')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'swaprows',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': swap},
                  [text('Swap Rows')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'append',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': append},
                  [text('Append 1,000 Rows')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'prepend',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': prepend},
                  [text('Prepend 1,000 Rows')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'movetotop',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': moveToTop},
                  [text('Move To Top')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'movetobottom',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': moveToBottom},
                  [text('Move To Bottom')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'addtotop',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': addToTop},
                  [text('Add To Top')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'addtobottom',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': addToBottom},
                  [text('Add To Bottom')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'add100totop',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': add100ToTop},
                  [text('Add 100 To Top')],
                )
              ],
            ),
            div(
              classes: const ['col-sm-6', 'smallpad'],
              [
                button(
                  id: 'add100tobottom',
                  classes: const ['btn', 'btn-primary', 'btn-block'],
                  events: {'click': add100ToBottom},
                  [text('Add 100 To Bottom')],
                )
              ],
            ),
            div(classes: const [
              'col-sm-6',
              'smallpad'
            ], [
              button(
                id: 'clear',
                classes: const ['btn', 'btn-primary', 'btn-block'],
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
