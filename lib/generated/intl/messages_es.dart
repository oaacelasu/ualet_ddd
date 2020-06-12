// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static m0(type) => "${Intl.select(type, {'title': 'Ahora, ¡Olvídalo!', 'description': 'A partir de hoy, tus ahorros podrán darte verdaderos rendimientos.', 'other': 'Piensa en todo lo que sabes sobre el ahorro tradicional.', })}";

  static m1(type) => "${Intl.select(type, {'title': 'ESTO ES UALET', 'description': 'Una aplicación que te permitirá sentarte a no hacer nada mientras nuestros expertos, con la supervisión de la Superintendencia Financiera de Colombia, trabajan para ti.', 'other': '', })}";

  static m2(type) => "${Intl.select(type, {'title': '¿CÓMO?', 'description': 'Con un robot que mueve tu dinero en los fondos de inversión más top del país, para que la rentabilidad sea una realidad.', 'other': '', })}";

  static m3(type) => "${Intl.select(type, {'title': 'PERFIL DE RIESGO', 'description': 'Lo que es adecuado para otros, puede no serlo para ti. Averigüemos qué nivel de riesgo estás dispuesto a asumir para elegir los mejores fondos de inversión que moverán tus ahorros.', 'other': '', })}";

  static m4(type) => "${Intl.select(type, {'title': '¡Empieza ahora!', 'description': 'Activa la opción de ahorro automático y nos vemos en unos días para decirte que tú también haces parte de la comunidad de ahorradores más grande de Colombia.', 'other': '', })}";

  static m5(version, copyright) => "V. ${version}\n${copyright}}\nTodos los derechos reservados";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "alreadyHaveAnAccountButton" : MessageLookupByLibrary.simpleMessage("Iniciar sesíon"),
    "alreadyHaveAnAccountLabel" : MessageLookupByLibrary.simpleMessage("Ya tengo una cuenta "),
    "indexTutorialItemA" : m0,
    "indexTutorialItemB" : m1,
    "indexTutorialItemC" : m2,
    "indexTutorialItemD" : m3,
    "indexTutorialItemE" : m4,
    "signUpButton" : MessageLookupByLibrary.simpleMessage("Registrarme"),
    "splashPageVersionLabel" : m5
  };
}
