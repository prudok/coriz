// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quizzylite/generated/intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',);
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',);
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `About App`
  String get aboutApp {
    return Intl.message(
      'About App',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Coriz`
  String get coriz {
    return Intl.message(
      'Coriz',
      name: 'coriz',
      desc: '',
      args: [],
    );
  }

  /// `If you have any suggestions how to improve this app, please write to:\n coriz_team@internet.ru`
  String get writeYourSuggestions {
    return Intl.message(
      'If you have any suggestions how to improve this app, please write to:\n coriz_team@internet.ru',
      name: 'writeYourSuggestions',
      desc: '',
      args: [],
    );
  }

  /// `Star or open an issue on Github.com:\n https://github.com/rel1nce/coriz`
  String get starOrOpenIssueOnGithub {
    return Intl.message(
      'Star or open an issue on Github.com:\n https://github.com/rel1nce/coriz',
      name: 'starOrOpenIssueOnGithub',
      desc: '',
      args: [],
    );
  }

  /// `This is an open source project, any kind of help to improve the App will be appreciated.`
  String get OpenSource {
    return Intl.message(
      'This is an open source project, any kind of help to improve the App will be appreciated.',
      name: 'OpenSource',
      desc: '',
      args: [],
    );
  }

  /// `Dictionary`
  String get dictionary {
    return Intl.message(
      'Dictionary',
      name: 'dictionary',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newWord {
    return Intl.message(
      'New',
      name: 'newWord',
      desc: '',
      args: [],
    );
  }

  /// `Learned`
  String get learned {
    return Intl.message(
      'Learned',
      name: 'learned',
      desc: '',
      args: [],
    );
  }

  /// `No Quizzes Added`
  String get noQuizzesAdded {
    return Intl.message(
      'No Quizzes Added',
      name: 'noQuizzesAdded',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete this word?`
  String get doUWantDeleteWord {
    return Intl.message(
      'Do you want to delete this word?',
      name: 'doUWantDeleteWord',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `No New Quizzes`
  String get noNewQuizzes {
    return Intl.message(
      'No New Quizzes',
      name: 'noNewQuizzes',
      desc: '',
      args: [],
    );
  }

  /// `New Quiz!`
  String get newQuiz {
    return Intl.message(
      'New Quiz!',
      name: 'newQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Edit Quiz`
  String get editQuiz {
    return Intl.message(
      'Edit Quiz',
      name: 'editQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Enter new word`
  String get enterNewWord {
    return Intl.message(
      'Enter new word',
      name: 'enterNewWord',
      desc: '',
      args: [],
    );
  }

  /// `Enter edited word`
  String get enterEditedWord {
    return Intl.message(
      'Enter edited word',
      name: 'enterEditedWord',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't Found Translate`
  String get couldntFoundTranslate {
    return Intl.message(
      'Couldn\'t Found Translate',
      name: 'couldntFoundTranslate',
      desc: '',
      args: [],
    );
  }

  /// `Translate into Russian`
  String get translateIntoRussian {
    return Intl.message(
      'Translate into Russian',
      name: 'translateIntoRussian',
      desc: '',
      args: [],
    );
  }

  /// `Enter new concept`
  String get enterNewConcept {
    return Intl.message(
      'Enter new concept',
      name: 'enterNewConcept',
      desc: '',
      args: [],
    );
  }

  /// `Enter edited concept`
  String get enterEditedConcept {
    return Intl.message(
      'Enter edited concept',
      name: 'enterEditedConcept',
      desc: '',
      args: [],
    );
  }

  /// `Please, fill the form.`
  String get pleaseFillTheForm {
    return Intl.message(
      'Please, fill the form.',
      name: 'pleaseFillTheForm',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get quiz {
    return Intl.message(
      'Quiz',
      name: 'quiz',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Terms Of Use`
  String get termsOfUse {
    return Intl.message(
      'Terms Of Use',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `About Project`
  String get aboutProject {
    return Intl.message(
      'About Project',
      name: 'aboutProject',
      desc: '',
      args: [],
    );
  }

  /// `To Add New Quiz Card:`
  String get toAddNewQuizCard {
    return Intl.message(
      'To Add New Quiz Card:',
      name: 'toAddNewQuizCard',
      desc: '',
      args: [],
    );
  }

  /// `1. Click On 'Add' Button`
  String get firstClickOnAddButton {
    return Intl.message(
      '1. Click On \'Add\' Button',
      name: 'firstClickOnAddButton',
      desc: '',
      args: [],
    );
  }

  /// `2. Fill The Form`
  String get secondFillTheForm {
    return Intl.message(
      '2. Fill The Form',
      name: 'secondFillTheForm',
      desc: '',
      args: [],
    );
  }

  /// `3. Star Your New Quiz Card`
  String get thirdStarYourNewQuizCard {
    return Intl.message(
      '3. Star Your New Quiz Card',
      name: 'thirdStarYourNewQuizCard',
      desc: '',
      args: [],
    );
  }

  /// `4. Double Click On Quiz Card To See Concept`
  String get fourthDoubleClickOnCard {
    return Intl.message(
      '4. Double Click On Quiz Card To See Concept',
      name: 'fourthDoubleClickOnCard',
      desc: '',
      args: [],
    );
  }

  /// `Add At Least One Card`
  String get addAtLeastOneCard {
    return Intl.message(
      'Add At Least One Card',
      name: 'addAtLeastOneCard',
      desc: '',
      args: [],
    );
  }

  /// `Word Learned!`
  String get wordLearned {
    return Intl.message(
      'Word Learned!',
      name: 'wordLearned',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
