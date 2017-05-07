import 'package:angular2/core.dart';

@Directive(selector: '[myHighlight]')
class HighlightDirective{

  final ElementRef _el;

  HighlightDirective(this._el);

  @HostListener('mouseenter')
  void onMouseEnter() {
    _highlight('yellow');
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    _highlight();
  }

  void _highlight([String color]) {
    _el.nativeElement.style.backgroundColor = color;
  }

}