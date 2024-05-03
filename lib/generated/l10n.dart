// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

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
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `جميع الحقوق محفوظة لوزارة الاقتصاد والتجارة © 2022`
  String get copyRightsMessage {
    return Intl.message(
      'جميع الحقوق محفوظة لوزارة الاقتصاد والتجارة © 2022',
      name: 'copyRightsMessage',
      desc: '',
      args: [],
    );
  }

  /// `مسح رمز الرقم الموحد`
  String get scanUnitedNumber {
    return Intl.message(
      'مسح رمز الرقم الموحد',
      name: 'scanUnitedNumber',
      desc: '',
      args: [],
    );
  }

  /// `البحث في الأسماء التجارية`
  String get searchCompanyNames {
    return Intl.message(
      'البحث في الأسماء التجارية',
      name: 'searchCompanyNames',
      desc: '',
      args: [],
    );
  }

  /// `شركات ليبيا`
  String get homeTitle {
    return Intl.message(
      'شركات ليبيا',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `بحث`
  String get search {
    return Intl.message(
      'بحث',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `ادخل اسم الشركة`
  String get companySearchHint {
    return Intl.message(
      'ادخل اسم الشركة',
      name: 'companySearchHint',
      desc: '',
      args: [],
    );
  }

  /// `حدث خطأ ما`
  String get somethingWentWrong {
    return Intl.message(
      'حدث خطأ ما',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `لايوجد نتائج بحث`
  String get noSearchResults {
    return Intl.message(
      'لايوجد نتائج بحث',
      name: 'noSearchResults',
      desc: '',
      args: [],
    );
  }

  /// `وجه الكاميرا على الرمز QR لمسح`
  String get aimCameraOnQrToScan {
    return Intl.message(
      'وجه الكاميرا على الرمز QR لمسح',
      name: 'aimCameraOnQrToScan',
      desc: '',
      args: [],
    );
  }

  /// `تم التحقق من الرقم الموحد للشركة بنجاح`
  String get companyFinderSuccessMessage {
    return Intl.message(
      'تم التحقق من الرقم الموحد للشركة بنجاح',
      name: 'companyFinderSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `مسح جديد`
  String get newScan {
    return Intl.message(
      'مسح جديد',
      name: 'newScan',
      desc: '',
      args: [],
    );
  }

  /// `إنهاء`
  String get done {
    return Intl.message(
      'إنهاء',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد شركة مسجلة بهدا الرقم`
  String get noCompanyFoundMessage {
    return Intl.message(
      'لا توجد شركة مسجلة بهدا الرقم',
      name: 'noCompanyFoundMessage',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء الإنتظار`
  String get pleaseWait {
    return Intl.message(
      'الرجاء الإنتظار',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء السماح بإستخدام الكاميرا لمسح الرمز`
  String get cameraPermissionMessage {
    return Intl.message(
      'الرجاء السماح بإستخدام الكاميرا لمسح الرمز',
      name: 'cameraPermissionMessage',
      desc: '',
      args: [],
    );
  }

  /// `رمز QR الذي قمت بمسحه غير صحيح`
  String get invalidQrCode {
    return Intl.message(
      'رمز QR الذي قمت بمسحه غير صحيح',
      name: 'invalidQrCode',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get login {
    return Intl.message(
      'تسجيل الدخول',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `شركاتي`
  String get myCompannies {
    return Intl.message(
      'شركاتي',
      name: 'myCompannies',
      desc: '',
      args: [],
    );
  }

  /// `اسم المستخدم`
  String get userName {
    return Intl.message(
      'اسم المستخدم',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `تأكد من صحة اسم المستخدم وكلمة المرور`
  String get invalidLoginCreds {
    return Intl.message(
      'تأكد من صحة اسم المستخدم وكلمة المرور',
      name: 'invalidLoginCreds',
      desc: '',
      args: [],
    );
  }

  /// `هذا الحقل مطلوب`
  String get filedRequired {
    return Intl.message(
      'هذا الحقل مطلوب',
      name: 'filedRequired',
      desc: '',
      args: [],
    );
  }

  /// `الإشعارات`
  String get notifications {
    return Intl.message(
      'الإشعارات',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `لاتوجد نتائج للعرض`
  String get nothingToShow {
    return Intl.message(
      'لاتوجد نتائج للعرض',
      name: 'nothingToShow',
      desc: '',
      args: [],
    );
  }

  /// `شركاتي`
  String get myCompanies {
    return Intl.message(
      'شركاتي',
      name: 'myCompanies',
      desc: '',
      args: [],
    );
  }

  /// `إعادة المحاولة`
  String get retry {
    return Intl.message(
      'إعادة المحاولة',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `تخطي`
  String get skip {
    return Intl.message(
      'تخطي',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `مرحبا {name}`
  String name(Object name) {
    return Intl.message(
      'مرحبا $name',
      name: 'name',
      desc: '',
      args: [name],
    );
  }

  /// `الرقم الوطني`
  String get nationialNo {
    return Intl.message(
      'الرقم الوطني',
      name: 'nationialNo',
      desc: '',
      args: [],
    );
  }

  /// `رقم القيد`
  String get registerNo {
    return Intl.message(
      'رقم القيد',
      name: 'registerNo',
      desc: '',
      args: [],
    );
  }

  /// `رقم المعاملة`
  String get transactionNo {
    return Intl.message(
      'رقم المعاملة',
      name: 'transactionNo',
      desc: '',
      args: [],
    );
  }

  /// `الإستعلام عن معاملة`
  String get queryTransaction {
    return Intl.message(
      'الإستعلام عن معاملة',
      name: 'queryTransaction',
      desc: '',
      args: [],
    );
  }

  /// `membershipChecker`
  String get membershipchecker {
    return Intl.message(
      'membershipChecker',
      name: 'membershipchecker',
      desc: '',
      args: [],
    );
  }

  /// `الإسم المقبول`
  String get approvedName {
    return Intl.message(
      'الإسم المقبول',
      name: 'approvedName',
      desc: '',
      args: [],
    );
  }

  /// `رقم طلب الإسم التجاري`
  String get businessNameRequestNo {
    return Intl.message(
      'رقم طلب الإسم التجاري',
      name: 'businessNameRequestNo',
      desc: '',
      args: [],
    );
  }

  /// `نوع المعاملة`
  String get transactionType {
    return Intl.message(
      'نوع المعاملة',
      name: 'transactionType',
      desc: '',
      args: [],
    );
  }

  /// `الحالة`
  String get transactionStatus {
    return Intl.message(
      'الحالة',
      name: 'transactionStatus',
      desc: '',
      args: [],
    );
  }

  /// `إنتظار الدفع`
  String get pendingPayment {
    return Intl.message(
      'إنتظار الدفع',
      name: 'pendingPayment',
      desc: '',
      args: [],
    );
  }

  /// `إسم الشركة`
  String get companyName {
    return Intl.message(
      'إسم الشركة',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `ملاحظات`
  String get notes {
    return Intl.message(
      'ملاحظات',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `ملغى`
  String get cancelled {
    return Intl.message(
      'ملغى',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `طلب اسم تجاري`
  String get bussinessNameRequest {
    return Intl.message(
      'طلب اسم تجاري',
      name: 'bussinessNameRequest',
      desc: '',
      args: [],
    );
  }

  /// `هل انت متأكد أنك تريد تسجيل الخروج؟`
  String get logOutWarningMessage {
    return Intl.message(
      'هل انت متأكد أنك تريد تسجيل الخروج؟',
      name: 'logOutWarningMessage',
      desc: '',
      args: [],
    );
  }

  /// `لا`
  String get no {
    return Intl.message(
      'لا',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `نعم`
  String get yes {
    return Intl.message(
      'نعم',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `اسمائي التجارية`
  String get myBussinessNames {
    return Intl.message(
      'اسمائي التجارية',
      name: 'myBussinessNames',
      desc: '',
      args: [],
    );
  }

  /// `حالة الاسم`
  String get nameStatus {
    return Intl.message(
      'حالة الاسم',
      name: 'nameStatus',
      desc: '',
      args: [],
    );
  }

  /// `رقم الطلب`
  String get requestNo {
    return Intl.message(
      'رقم الطلب',
      name: 'requestNo',
      desc: '',
      args: [],
    );
  }

  /// `مكان اصدار السجل`
  String get commercialRegisteryOfficeName {
    return Intl.message(
      'مكان اصدار السجل',
      name: 'commercialRegisteryOfficeName',
      desc: '',
      args: [],
    );
  }

  /// `محرر العقود`
  String get notary {
    return Intl.message(
      'محرر العقود',
      name: 'notary',
      desc: '',
      args: [],
    );
  }

  /// `الأسماء التجارية`
  String get bussniessNames {
    return Intl.message(
      'الأسماء التجارية',
      name: 'bussniessNames',
      desc: '',
      args: [],
    );
  }

  /// `طلبات تسجيل الشركات`
  String get companyRegisterRequests {
    return Intl.message(
      'طلبات تسجيل الشركات',
      name: 'companyRegisterRequests',
      desc: '',
      args: [],
    );
  }

  /// `المعاملات`
  String get transactions {
    return Intl.message(
      'المعاملات',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `استعلام برقمك الوطني`
  String get memeberShipInquery {
    return Intl.message(
      'استعلام برقمك الوطني',
      name: 'memeberShipInquery',
      desc: '',
      args: [],
    );
  }

  /// `إستعلام عن معاملة`
  String get transactionInquery {
    return Intl.message(
      'إستعلام عن معاملة',
      name: 'transactionInquery',
      desc: '',
      args: [],
    );
  }

  /// `حالة الشركة`
  String get companyStatus {
    return Intl.message(
      'حالة الشركة',
      name: 'companyStatus',
      desc: '',
      args: [],
    );
  }

  /// `رقم القيد الموحد`
  String get companyNo {
    return Intl.message(
      'رقم القيد الموحد',
      name: 'companyNo',
      desc: '',
      args: [],
    );
  }

  /// `معاملاتي`
  String get myTransactions {
    return Intl.message(
      'معاملاتي',
      name: 'myTransactions',
      desc: '',
      args: [],
    );
  }

  /// `الاسم`
  String get fullName {
    return Intl.message(
      'الاسم',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `عضو بشركة`
  String get memeberOfCompany {
    return Intl.message(
      'عضو بشركة',
      name: 'memeberOfCompany',
      desc: '',
      args: [],
    );
  }

  /// `اساهم بشركة`
  String get contributorOfcompany {
    return Intl.message(
      'اساهم بشركة',
      name: 'contributorOfcompany',
      desc: '',
      args: [],
    );
  }

  /// `أعمل بشركة`
  String get IworkFor {
    return Intl.message(
      'أعمل بشركة',
      name: 'IworkFor',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
