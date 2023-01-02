import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDecoration {
  TextFieldDecoration(this.errorEmptyString, this.labelText, this.prefix);
  final bool errorEmptyString;
  final String labelText;
  final String? prefix;
  InputDecoration setTextFieldDecoration() {
    final decoration = InputDecoration(
      prefixText: prefix,
      label: errorEmptyString == false
          ? _LabelText(
              color: const Color.fromARGB(255, 168, 168, 168), text: labelText)
          : _LabelText(color: Colors.red, text: 'Write $labelText'),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      isCollapsed: true,
      contentPadding: const EdgeInsets.all(15),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
    return decoration;
  }
}

class _LabelText extends StatelessWidget {
  _LabelText({super.key, required this.color, required this.text});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(color: color),
    );
  }
}

class TextF extends StatelessWidget {
  const TextF({super.key});

  // void _onTap() {
  //   print('On tap');
  // }

  // void _onChanged(String text) {
  //   print('On changed: $text');
  // }

  // void _onEditingComplete() {
  //   print('On editingComplete');
  // }

  // void _onSubmited(String text) {
  //   print('On submited: $text');
  // }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: TextInputDecoration().setTextInputDecoration(),
//=========================================================================================================================================================================
      showCursor: true, // показывать или не показывать курсор
      cursorColor: Colors.black, // цвет курсора
      cursorHeight: 20, // длина курсора
      // cursorRadius: , // радиус курсора
      cursorWidth: 1, // ширина курсора
//=========================================================================================================================================================================
      autocorrect: false, // включить исправление ошибок
      enableSuggestions:
          false, // дополняет текс возможными вариантами, по умолчанию true, выключается только при выключении autocorrect.
      obscureText: false, // скрывает текс символами
      obscuringCharacter: '#', // задает символ под которым скрывается текст
      textCapitalization: TextCapitalization
          .words, // задает настройки заглавных букв: предложение начинается с заглавной/ все символы большие/ всё с маленькой буквы/ все слова с заглавной буквы
      smartDashesType: SmartDashesType
          .disabled, // черточки сливаются либо не сливаются во едино
      smartQuotesType: SmartQuotesType.disabled,
//=========================================================================================================================================================================
      enableInteractiveSelection: true, // контралирует выделение текста
      toolbarOptions: const ToolbarOptions(
          copy: true,
          cut: true,
          selectAll: true,
          paste: true), // показывает опции: copy, paste, selectAll, cut
      // selectionHeightStyle: ,
      selectionControls:
          CupertinoTextSelectionControls(), // задает дизайн toolBar который содержит copy, paste ect...
      // selectionWidthStyle: ,
//=========================================================================================================================================================================
      // expands: , // расширяет TextField до возможных величин, работает только if maxLines && minLines == null
      // style: , // задает стиль текста
      maxLength: 10, // задает возможную длину текста
      maxLengthEnforcement: MaxLengthEnforcement
          .none, // задает настройку поведения при достяжении максильного количества символов
      // maxLines: 2, // задает максимально возможное количество строк
      // minLines: 2, // задает минимально возможное количество строк
//=========================================================================================================================================================================
      textInputAction:
          TextInputAction.done, // позволяет задавать состояние кнопки enter
      keyboardAppearance: Brightness
          .dark, // позволяет выбрать цвет клавиатуры между light and dark
      keyboardType: TextInputType.text, // позволяет задавать тип клавиатуры
//=========================================================================================================================================================================
      // textAlign: , // задает направление ввода текста
      textAlignVertical:
          TextAlignVertical.center, // расположение линии ввода текста
      // textDirection: , // направление текста
//=========================================================================================================================================================================
      enabled:
          true, // активация и деактивация виджета, можно задавать так же в InputDecoration, но данный параметр будет иметь приемущество
      readOnly: false, // Включает и выключает возможность редактировать текст
      autofocus:
          false, // Вызывает клавиатуру и ставил автофокус на данный виджет как только он активируется.
//=========================================================================================================================================================================
      // restorationId: ,
      // focusNode: ,
      // dragStartBehavior: ,
      // enableIMEPersonalizedLearning: ,
      // autofillHints: ,
      // controller: ,
      // scribbleEnabled: , // Настройка только для ipad
      // scrollController: ,
      // scrollPadding: ,
      // scrollPhysics: ,
      // clipBehavior: ,
      // strutStyle: ,
      // buildCounter: ,
      // key: ,
      // mouseCursor: ,
      // inputFormatters: [],
//=========================================================================================================================================================================
      // onAppPrivateCommand: , // не ясно что это, но кажется позволяет задавать свои команды на клавиатуре
      // onTap: _onTap, // вызывается при нажатии на TextField
      // onChanged: _onChanged, // вызывается при редактировании поля
      // onEditingComplete:
      //     _onEditingComplete, // вызывается при завершении редактировании поля
      // onSubmitted:
      //     _onSubmited, // вызывается при нажатии на клавишу enter (готово)
    );
  }
}

class TextInputDecoration {
  InputDecoration setTextInputDecoration() {
    InputDecoration decoration = const InputDecoration(
      // // properties
      // icon: Icon(Icons.ac_unit), // ставит иконку снаружи справа
      // iconColor: Colors.amber, // задает цвет иконки
//=========================================================================================================================================================================

      // label: Text("Label"), // задает лейблб принимает любой виджет
      // labelText: , // задает лейбл в виде текста
      // labelStyle: , // задает стиль текст лейбла
      // floatingLabelStyle: , // задает стиль верхнего лейбла
      // floatingLabelBehavior: FloatingLabelBehavior.auto, // задает поведение лейбла
      // floatingLabelAlignment: FloatingLabelAlignment.center, // задает расположение верхнего лейбла
//=========================================================================================================================================================================

      // hintText:'HintText', // задает скрытый текст, находиться внутри TextField, если задан лейбл с behavior.autо, то в состоянии виджета enable hintTex не виден
      // hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w900), // задает стиль скрыттого текста
      // hintMaxLines: , // максимальное количесво строк скрытого текста
      // hintTextDirection: , // редактирование скрытого текста
//=========================================================================================================================================================================

      // helperText: , // задает вспомогательный текст
      // helperStyle: , // стиль вспомогательного текста
      // helperMaxLines: , // максимальное количество строк вспомогательного текста
//=========================================================================================================================================================================

      // errorText: 'Error text',
      // errorStyle: ,
      // errorMaxLines: ,
//=========================================================================================================================================================================

      // prefix: ,
      // prefixIcon: ,
      // prefixIconColor: ,
      // prefixIconConstraints: ,
      // prefixText: ,
      // prefixStyle: ,
//=========================================================================================================================================================================

      // suffix: ,
      // suffixIcon: ,
      // suffixIconColor: ,
      // suffixIconConstraints: ,
      // suffixText: ,
      // suffixStyle: ,
//=========================================================================================================================================================================

      // counter: ,
      // counterText: ,
      // counterStyle: ,
//=========================================================================================================================================================================

      // filled: ,
      // fillColor: ,
      // focusColor: ,
      // hoverColor: ,
//=========================================================================================================================================================================

      // isCollapsed: ,
      // contentPadding: ,
      // isDense: ,
      // constraints: ,
      // semanticCounterText: ,
      // alignLabelWithHint: ,
//=========================================================================================================================================================================

      // // borders
      // border: OutlineInputBorder(
      //   borderRadius: const BorderRadius.all(Radius.circular(30)),
      //   borderSide: BorderSide(
      //     color: Color.fromARGB(255, 209, 14, 14),
      //     width: 10,
      //     // style: ,
      //     // strokeAlign: ,
      //   ),
      //   // gapPadding: ,
      // ),
//=========================================================================================================================================================================
      enabledBorder: OutlineInputBorder(
        // состояние бордера без фокусировки. Чтобы увидеть это состояние кликните куда нибудь вне TextField.
        // gapPadding: 5,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 127, 127, 127),
          width: 2, // задает толщину бордера
          style: BorderStyle.solid, // задает видимость бордера.
          // strokeAlign: StrokeAlign.inside,
        ),
      ),
//=========================================================================================================================================================================
      focusedBorder: OutlineInputBorder(
        // состояние бордера при фокусировке. Чтобы вызвать это состояние кликните в TextField.
        // gapPadding: ,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 21, 212, 27),
          width: 5, // задает толщину бордера
          style: BorderStyle.solid, // задает видимость бордера
          strokeAlign: StrokeAlign.inside,
        ),
      ),
//=========================================================================================================================================================================
      disabledBorder: OutlineInputBorder(
        // состояние бордера если виджет не активен (параметр enable = false).
        // gapPadding: ,
        borderRadius: BorderRadius.all(Radius.circular(0)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 0, 0, 0),
          width: 10, // задает толщину бордера
          style: BorderStyle.solid, // задает видимость бордера
          strokeAlign: StrokeAlign.inside,
        ),
      ),
//=========================================================================================================================================================================
      errorBorder: OutlineInputBorder(
        // состояние бордера при ошибке. Чтобы вызвать это состояние надо явно задать параметр errorText.
        // gapPadding: ,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 237, 0, 0),
          width: 10, // задает толщину бордера
          style: BorderStyle.solid, // задает видимость бордера
          strokeAlign: StrokeAlign.inside,
        ),
      ),
//=========================================================================================================================================================================
      focusedErrorBorder: OutlineInputBorder(
        // состояние бордера при ошибке и фокусе на строку
        // gapPadding: ,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 202, 13, 174),
          width: 2, // задает толщину бордера
          style: BorderStyle.solid, // задает видимость бордера
          strokeAlign: StrokeAlign.inside,
        ),
      ),
    );
    return decoration;
  }
}
