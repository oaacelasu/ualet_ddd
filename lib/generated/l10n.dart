// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `V. {version}\n{copyright}}\nTodos los derechos reservados`
  String splashPageVersionLabel(Object version, Object copyright) {
    return Intl.message(
      'V. $version\n$copyright}\nTodos los derechos reservados',
      name: 'splashPageVersionLabel',
      desc: '',
      args: [version, copyright],
    );
  }

  /// `Registrarme`
  String get signUpButton {
    return Intl.message(
      'Registrarme',
      name: 'signUpButton',
      desc: '',
      args: [],
    );
  }

  /// `Ingresar`
  String get signInButton {
    return Intl.message(
      'Ingresar',
      name: 'signInButton',
      desc: '',
      args: [],
    );
  }

  /// `Correo electrónico o celular`
  String get hintCredentialField {
    return Intl.message(
      'Correo electrónico o celular',
      name: 'hintCredentialField',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get hintPasswordField {
    return Intl.message(
      'Contraseña',
      name: 'hintPasswordField',
      desc: '',
      args: [],
    );
  }

  /// `Ha ocurrido un error, intenta nuevamente.`
  String get notExpectedError {
    return Intl.message(
      'Ha ocurrido un error, intenta nuevamente.',
      name: 'notExpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa un correo electrónico válido`
  String get errorEmailField {
    return Intl.message(
      'Ingresa un correo electrónico válido',
      name: 'errorEmailField',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa un número válido`
  String get errorPhoneField {
    return Intl.message(
      'Ingresa un número válido',
      name: 'errorPhoneField',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa una contraseña válida`
  String get errorPasswordField {
    return Intl.message(
      'Ingresa una contraseña válida',
      name: 'errorPasswordField',
      desc: '',
      args: [],
    );
  }

  /// `Ya tengo una cuenta `
  String get alreadyHaveAnAccountLabel {
    return Intl.message(
      'Ya tengo una cuenta ',
      name: 'alreadyHaveAnAccountLabel',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesíon`
  String get alreadyHaveAnAccountButton {
    return Intl.message(
      'Iniciar sesíon',
      name: 'alreadyHaveAnAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Aún no tengo una cuenta `
  String get notHaveAnAccountLabel {
    return Intl.message(
      'Aún no tengo una cuenta ',
      name: 'notHaveAnAccountLabel',
      desc: '',
      args: [],
    );
  }

  /// `Régistrarme`
  String get notHaveAnAccountButton {
    return Intl.message(
      'Régistrarme',
      name: 'notHaveAnAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `El número debe iniciar en 3`
  String get errorPhoneNumberNotStartsWith3 {
    return Intl.message(
      'El número debe iniciar en 3',
      name: 'errorPhoneNumberNotStartsWith3',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, title {Ahora, ¡Olvídalo!} description {A partir de hoy, tus ahorros podrán darte verdaderos rendimientos.} other {Piensa en todo lo que sabes sobre el ahorro tradicional.}}`
  String indexTutorialItemA(Object type) {
    return Intl.select(
      type,
      {
        'title': 'Ahora, ¡Olvídalo!',
        'description': 'A partir de hoy, tus ahorros podrán darte verdaderos rendimientos.',
        'other': 'Piensa en todo lo que sabes sobre el ahorro tradicional.',
      },
      name: 'indexTutorialItemA',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, title {ESTO ES UALET} description {Una aplicación que te permitirá sentarte a no hacer nada mientras nuestros expertos, con la supervisión de la Superintendencia Financiera de Colombia, trabajan para ti.} other {}}`
  String indexTutorialItemB(Object type) {
    return Intl.select(
      type,
      {
        'title': 'ESTO ES UALET',
        'description': 'Una aplicación que te permitirá sentarte a no hacer nada mientras nuestros expertos, con la supervisión de la Superintendencia Financiera de Colombia, trabajan para ti.',
        'other': '',
      },
      name: 'indexTutorialItemB',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, title {¿CÓMO?} description {Con un robot que mueve tu dinero en los fondos de inversión más top del país, para que la rentabilidad sea una realidad.} other {}}`
  String indexTutorialItemC(Object type) {
    return Intl.select(
      type,
      {
        'title': '¿CÓMO?',
        'description': 'Con un robot que mueve tu dinero en los fondos de inversión más top del país, para que la rentabilidad sea una realidad.',
        'other': '',
      },
      name: 'indexTutorialItemC',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, title {PERFIL DE RIESGO} description {Lo que es adecuado para otros, puede no serlo para ti. Averigüemos qué nivel de riesgo estás dispuesto a asumir para elegir los mejores fondos de inversión que moverán tus ahorros.} other {}}`
  String indexTutorialItemD(Object type) {
    return Intl.select(
      type,
      {
        'title': 'PERFIL DE RIESGO',
        'description': 'Lo que es adecuado para otros, puede no serlo para ti. Averigüemos qué nivel de riesgo estás dispuesto a asumir para elegir los mejores fondos de inversión que moverán tus ahorros.',
        'other': '',
      },
      name: 'indexTutorialItemD',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, title {¡Empieza ahora!} description {Activa la opción de ahorro automático y nos vemos en unos días para decirte que tú también haces parte de la comunidad de ahorradores más grande de Colombia.} other {}}`
  String indexTutorialItemE(Object type) {
    return Intl.select(
      type,
      {
        'title': '¡Empieza ahora!',
        'description': 'Activa la opción de ahorro automático y nos vemos en unos días para decirte que tú también haces parte de la comunidad de ahorradores más grande de Colombia.',
        'other': '',
      },
      name: 'indexTutorialItemE',
      desc: '',
      args: [type],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}