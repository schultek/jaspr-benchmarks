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
      Key? key})
      : super(key: key);

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
    yield DomComponent(
      tag: 'div',
      classes: const ['jumbotron'],
      children: [
        DomComponent(
          tag: 'div',
          classes: const ['row'],
          children: [
            const DomComponent(
              tag: 'div',
              classes: ['col-md-6'],
              child: DomComponent(tag: 'h1', child: Text('Jaspr (keyed)')),
            ),
            DomComponent(
              tag: 'div',
              classes: const ['col-md-6'],
              children: [
                DomComponent(
                  tag: 'div',
                  classes: const ['row'],
                  children: [
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'run',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': run},
                        child: const Text('Create 1,000 Rows'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'runlots',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': runLots},
                        child: const Text('Create 10,000 Rows'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'update',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': update},
                        child: const Text('Update every 10th Row'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'swaprows',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': swap},
                        child: const Text('Swap Rows'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'append',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': append},
                        child: const Text('Append 1,000 Rows'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'prepend',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': prepend},
                        child: const Text('Prepend 1,000 Rows'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'movetotop',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': moveToTop},
                        child: const Text('Move To Top'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'movetobottom',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': moveToBottom},
                        child: const Text('Move To Bottom'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'addtotop',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': addToTop},
                        child: const Text('Add To Top'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'addtobottom',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': addToBottom},
                        child: const Text('Add To Bottom'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'add100totop',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': add100ToTop},
                        child: const Text('Add 100 To Top'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'add100tobottom',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': add100ToBottom},
                        child: const Text('Add 100 To Bottom'),
                      ),
                    ),
                    DomComponent(
                      tag: 'div',
                      classes: const ['col-sm-6', 'smallpad'],
                      child: DomComponent(
                        tag: 'button',
                        id: 'clear',
                        classes: const ['btn', 'btn-primary', 'btn-block'],
                        events: {'click': clear},
                        child: const Text('Clear'),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
