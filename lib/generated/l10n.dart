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

  /// `Continue`
  String get custom_continue {
    return Intl.message(
      'Continue',
      name: 'custom_continue',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Private`
  String get private {
    return Intl.message(
      'Private',
      name: 'private',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Deleting an ad`
  String get deletingAd {
    return Intl.message(
      'Deleting an ad',
      name: 'deletingAd',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Direction👇`
  String get direction {
    return Intl.message(
      'Direction👇',
      name: 'direction',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get userName {
    return Intl.message(
      'User name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `from {num}`
  String from(Object num) {
    return Intl.message(
      'from $num',
      name: 'from',
      desc: '',
      args: [num],
    );
  }

  /// `to {num}`
  String to(Object num) {
    return Intl.message(
      'to $num',
      name: 'to',
      desc: '',
      args: [num],
    );
  }

  /// `Are you sure you want to delete this ad`
  String get wantDeletePublication {
    return Intl.message(
      'Are you sure you want to delete this ad',
      name: 'wantDeletePublication',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to call this number`
  String get wantToCall {
    return Intl.message(
      'Do you want to call this number',
      name: 'wantToCall',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `No data available`
  String get noData {
    return Intl.message(
      'No data available',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Added to favorites`
  String get addFavorites {
    return Intl.message(
      'Added to favorites',
      name: 'addFavorites',
      desc: '',
      args: [],
    );
  }

  /// `New ads`
  String get newPartTimeJobs {
    return Intl.message(
      'New ads',
      name: 'newPartTimeJobs',
      desc: '',
      args: [],
    );
  }

  /// `Loading data......`
  String get loadingData {
    return Intl.message(
      'Loading data......',
      name: 'loadingData',
      desc: '',
      args: [],
    );
  }

  /// `User's current location`
  String get currentLocation {
    return Intl.message(
      'User\'s current location',
      name: 'currentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Location detection service is disabled`
  String get locationService_detection {
    return Intl.message(
      'Location detection service is disabled',
      name: 'locationService_detection',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions denied`
  String get locationPermissions_denied {
    return Intl.message(
      'Location permissions denied',
      name: 'locationPermissions_denied',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are permanently denied, we cannot request permission`
  String get weCant_requestPermission {
    return Intl.message(
      'Location permissions are permanently denied, we cannot request permission',
      name: 'weCant_requestPermission',
      desc: '',
      args: [],
    );
  }

  /// `Log out of the profile`
  String get exit {
    return Intl.message(
      'Log out of the profile',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Profile Settings`
  String get settings_profile {
    return Intl.message(
      'Profile Settings',
      name: 'settings_profile',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get friends {
    return Intl.message(
      'Friends',
      name: 'friends',
      desc: '',
      args: [],
    );
  }

  /// `Favourites`
  String get favourites {
    return Intl.message(
      'Favourites',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `Free time`
  String get freeTime {
    return Intl.message(
      'Free time',
      name: 'freeTime',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get aboutMe {
    return Intl.message(
      'About me',
      name: 'aboutMe',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Employee data 👇`
  String get data_employer {
    return Intl.message(
      'Employee data 👇',
      name: 'data_employer',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `User Profile`
  String get userProfile {
    return Intl.message(
      'User Profile',
      name: 'userProfile',
      desc: '',
      args: [],
    );
  }

  /// `Upload a photo for your profile`
  String get uploadingPhone_profile {
    return Intl.message(
      'Upload a photo for your profile',
      name: 'uploadingPhone_profile',
      desc: '',
      args: [],
    );
  }

  /// `Add a photo for your publications`
  String get addPhoto_publication {
    return Intl.message(
      'Add a photo for your publications',
      name: 'addPhoto_publication',
      desc: '',
      args: [],
    );
  }

  /// `Uploading photos`
  String get uploadingPhotos {
    return Intl.message(
      'Uploading photos',
      name: 'uploadingPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Mistake`
  String get mistake {
    return Intl.message(
      'Mistake',
      name: 'mistake',
      desc: '',
      args: [],
    );
  }

  /// `to Accept`
  String get agree {
    return Intl.message(
      'to Accept',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Publication`
  String get publication {
    return Intl.message(
      'Publication',
      name: 'publication',
      desc: '',
      args: [],
    );
  }

  /// `Specialists`
  String get professionals {
    return Intl.message(
      'Specialists',
      name: 'professionals',
      desc: '',
      args: [],
    );
  }

  /// `Create an ad`
  String get creatingAd {
    return Intl.message(
      'Create an ad',
      name: 'creatingAd',
      desc: '',
      args: [],
    );
  }

  /// `Describe in detail`
  String get describeDetail {
    return Intl.message(
      'Describe in detail',
      name: 'describeDetail',
      desc: '',
      args: [],
    );
  }

  /// `Title Ad`
  String get titleAd {
    return Intl.message(
      'Title Ad',
      name: 'titleAd',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get requiredField {
    return Intl.message(
      'Required field',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Your specialty and skills`
  String get forExample {
    return Intl.message(
      'Your specialty and skills',
      name: 'forExample',
      desc: '',
      args: [],
    );
  }

  /// `My specialty is`
  String get mySpecialty {
    return Intl.message(
      'My specialty is',
      name: 'mySpecialty',
      desc: '',
      args: [],
    );
  }

  /// `At least 50 non-letters {length}`
  String atLeast_70(Object length) {
    return Intl.message(
      'At least 50 non-letters $length',
      name: 'atLeast_70',
      desc: '',
      args: [length],
    );
  }

  /// `Think about what details you would like to show on the ad. And add them to the description.`
  String get description_aboutYou {
    return Intl.message(
      'Think about what details you would like to show on the ad. And add them to the description.',
      name: 'description_aboutYou',
      desc: '',
      args: [],
    );
  }

  /// `Private or business`
  String get private_business {
    return Intl.message(
      'Private or business',
      name: 'private_business',
      desc: '',
      args: [],
    );
  }

  /// `Location your address`
  String get locationYour_address {
    return Intl.message(
      'Location your address',
      name: 'locationYour_address',
      desc: '',
      args: [],
    );
  }

  /// `City, Address`
  String get cityTown {
    return Intl.message(
      'City, Address',
      name: 'cityTown',
      desc: '',
      args: [],
    );
  }

  /// `Contact person`
  String get contactPerson {
    return Intl.message(
      'Contact person',
      name: 'contactPerson',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phoneNumber {
    return Intl.message(
      'phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Create an ad`
  String get createAd {
    return Intl.message(
      'Create an ad',
      name: 'createAd',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Add data to determine the level of training`
  String get addData_work {
    return Intl.message(
      'Add data to determine the level of training',
      name: 'addData_work',
      desc: '',
      args: [],
    );
  }

  /// `What kind of specialists are you looking for ?`
  String get for_example {
    return Intl.message(
      'What kind of specialists are you looking for ?',
      name: 'for_example',
      desc: '',
      args: [],
    );
  }

  /// `Free time`
  String get freeTime_write {
    return Intl.message(
      'Free time',
      name: 'freeTime_write',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get update {
    return Intl.message(
      'Complete',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `No correspondence with users`
  String get notChat_withPeople {
    return Intl.message(
      'No correspondence with users',
      name: 'notChat_withPeople',
      desc: '',
      args: [],
    );
  }

  /// `Photo`
  String get photo {
    return Intl.message(
      'Photo',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `File`
  String get file {
    return Intl.message(
      'File',
      name: 'file',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Think about what details you would like to show on the ad. And add them to the description.`
  String get thinkAbout_description {
    return Intl.message(
      'Think about what details you would like to show on the ad. And add them to the description.',
      name: 'thinkAbout_description',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get message {
    return Intl.message(
      'Messages',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Tape`
  String get tape {
    return Intl.message(
      'Tape',
      name: 'tape',
      desc: '',
      args: [],
    );
  }

  /// `Select a language`
  String get selected_language {
    return Intl.message(
      'Select a language',
      name: 'selected_language',
      desc: '',
      args: [],
    );
  }

  /// `Will be available soon`
  String get willBe_available {
    return Intl.message(
      'Will be available soon',
      name: 'willBe_available',
      desc: '',
      args: [],
    );
  }

  /// `Add a photo`
  String get add_photo {
    return Intl.message(
      'Add a photo',
      name: 'add_photo',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get authorization {
    return Intl.message(
      'Authorization',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Add a photo`
  String get check_data {
    return Intl.message(
      'Add a photo',
      name: 'check_data',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Registration how ?`
  String get how_register {
    return Intl.message(
      'Registration how ?',
      name: 'how_register',
      desc: '',
      args: [],
    );
  }

  /// `You can register as a part-time job or as a user.\n1. YES ---> Part-time job\n2. No ---> User`
  String get howRegistration_description {
    return Intl.message(
      'You can register as a part-time job or as a user.\n1. YES ---> Part-time job\n2. No ---> User',
      name: 'howRegistration_description',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Photo correction`
  String get cropper {
    return Intl.message(
      'Photo correction',
      name: 'cropper',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Upload an image to get started`
  String get uploadImage_forBegin {
    return Intl.message(
      'Upload an image to get started',
      name: 'uploadImage_forBegin',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get upload {
    return Intl.message(
      'Download',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Part-time job`
  String get partTime_job {
    return Intl.message(
      'Part-time job',
      name: 'partTime_job',
      desc: '',
      args: [],
    );
  }

  /// `additional work in addition to the main occupation.`
  String get bannerPage_first {
    return Intl.message(
      'additional work in addition to the main occupation.',
      name: 'bannerPage_first',
      desc: '',
      args: [],
    );
  }

  /// `Can you find the right specialists`
  String get bannerPage_second {
    return Intl.message(
      'Can you find the right specialists',
      name: 'bannerPage_second',
      desc: '',
      args: [],
    );
  }

  /// `easy and fast`
  String get bannerPage_secondAgain {
    return Intl.message(
      'easy and fast',
      name: 'bannerPage_secondAgain',
      desc: '',
      args: [],
    );
  }

  /// `If you are a good specialist`
  String get bannerPage_third {
    return Intl.message(
      'If you are a good specialist',
      name: 'bannerPage_third',
      desc: '',
      args: [],
    );
  }

  /// `you can place ads in your directions.`
  String get bannerPage_thirdAgain {
    return Intl.message(
      'you can place ads in your directions.',
      name: 'bannerPage_thirdAgain',
      desc: '',
      args: [],
    );
  }

  /// `work in your free time in addition to your main occupation`
  String get bannerPage_thirdDesc {
    return Intl.message(
      'work in your free time in addition to your main occupation',
      name: 'bannerPage_thirdDesc',
      desc: '',
      args: [],
    );
  }

  /// `Check the data`
  String get error_data {
    return Intl.message(
      'Check the data',
      name: 'error_data',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_account {
    return Intl.message(
      'Delete Account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Delete your Account?`
  String get textDelete_account {
    return Intl.message(
      'Delete your Account?',
      name: 'textDelete_account',
      desc: '',
      args: [],
    );
  }

  /// `If you select delete, we will delete your account on our server.\nAll your data will be deleted and you will not be able to recover it.`
  String get delete_accountDesc {
    return Intl.message(
      'If you select delete, we will delete your account on our server.\nAll your data will be deleted and you will not be able to recover it.',
      name: 'delete_accountDesc',
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

  /// `Deleting Notifications`
  String get delete_notification {
    return Intl.message(
      'Deleting Notifications',
      name: 'delete_notification',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this notification?`
  String get delete_notification_desc {
    return Intl.message(
      'Are you sure you want to delete this notification?',
      name: 'delete_notification_desc',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to work ?`
  String get work_PartTime {
    return Intl.message(
      'Do you want to work ?',
      name: 'work_PartTime',
      desc: '',
      args: [],
    );
  }

  /// `I want to work part time`
  String get i_work_PartTime {
    return Intl.message(
      'I want to work part time',
      name: 'i_work_PartTime',
      desc: '',
      args: [],
    );
  }

  /// `Refuse`
  String get no_thanks {
    return Intl.message(
      'Refuse',
      name: 'no_thanks',
      desc: '',
      args: [],
    );
  }

  /// `To accept`
  String get turn_on {
    return Intl.message(
      'To accept',
      name: 'turn_on',
      desc: '',
      args: [],
    );
  }

  /// `Location data in the background`
  String get use_location {
    return Intl.message(
      'Location data in the background',
      name: 'use_location',
      desc: '',
      args: [],
    );
  }

  /// `It is necessary to automatically determine your location in order to automatically indicate your city and address`
  String get location_description_first {
    return Intl.message(
      'It is necessary to automatically determine your location in order to automatically indicate your city and address',
      name: 'location_description_first',
      desc: '',
      args: [],
    );
  }

  /// `By creating an ad and enabling location data in the background, employers (employees) will see your location, which can simplify the selection of a specialist (job).`
  String get location_description_second {
    return Intl.message(
      'By creating an ad and enabling location data in the background, employers (employees) will see your location, which can simplify the selection of a specialist (job).',
      name: 'location_description_second',
      desc: '',
      args: [],
    );
  }

  /// `If you are the right specialist, would like to be found by people near you.`
  String get location_description_third {
    return Intl.message(
      'If you are the right specialist, would like to be found by people near you.',
      name: 'location_description_third',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Checking the number`
  String get verification_number {
    return Intl.message(
      'Checking the number',
      name: 'verification_number',
      desc: '',
      args: [],
    );
  }

  /// `We have sent you a code to the {phone} number`
  String otp_sms(Object phone) {
    return Intl.message(
      'We have sent you a code to the $phone number',
      name: 'otp_sms',
      desc: '',
      args: [phone],
    );
  }

  /// `Write the correct code from the sms`
  String get correct_otp_sms {
    return Intl.message(
      'Write the correct code from the sms',
      name: 'correct_otp_sms',
      desc: '',
      args: [],
    );
  }

  /// `Check...`
  String get check {
    return Intl.message(
      'Check...',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Request the code again`
  String get try_again {
    return Intl.message(
      'Request the code again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `{count} seconds`
  String second(Object count) {
    return Intl.message(
      '$count seconds',
      name: 'second',
      desc: '',
      args: [count],
    );
  }

  /// `Log in by phone number`
  String get login_phone {
    return Intl.message(
      'Log in by phone number',
      name: 'login_phone',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done_text {
    return Intl.message(
      'Done',
      name: 'done_text',
      desc: '',
      args: [],
    );
  }

  /// `Location Permissions`
  String get location_permission {
    return Intl.message(
      'Location Permissions',
      name: 'location_permission',
      desc: '',
      args: [],
    );
  }

  /// `Write the phone number`
  String get write_number {
    return Intl.message(
      'Write the phone number',
      name: 'write_number',
      desc: '',
      args: [],
    );
  }

  /// `Log in using your phone`
  String get loginBy_number {
    return Intl.message(
      'Log in using your phone',
      name: 'loginBy_number',
      desc: '',
      args: [],
    );
  }

  /// `Specify your current location to sort ads by your location`
  String get noSelected_location {
    return Intl.message(
      'Specify your current location to sort ads by your location',
      name: 'noSelected_location',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Detailed description of the ad`
  String get full_description {
    return Intl.message(
      'Detailed description of the ad',
      name: 'full_description',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been successfully deleted.`
  String get deleteAccount_success {
    return Intl.message(
      'Your account has been successfully deleted.',
      name: 'deleteAccount_success',
      desc: '',
      args: [],
    );
  }

  /// `Instructions for deleting an account`
  String get delete_instruction {
    return Intl.message(
      'Instructions for deleting an account',
      name: 'delete_instruction',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your account again and click {String}`
  String delete_instructionText(Object String) {
    return Intl.message(
      'Log in to your account again and click $String',
      name: 'delete_instructionText',
      desc: '',
      args: [String],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Ready to work`
  String get want_work {
    return Intl.message(
      'Ready to work',
      name: 'want_work',
      desc: '',
      args: [],
    );
  }

  /// `Not ready to work`
  String get dontWant_work {
    return Intl.message(
      'Not ready to work',
      name: 'dontWant_work',
      desc: '',
      args: [],
    );
  }

  /// `Requires access to device location data in the background`
  String get location_title {
    return Intl.message(
      'Requires access to device location data in the background',
      name: 'location_title',
      desc: '',
      args: [],
    );
  }

  /// `To ensure the operation of the application during use, this application collects location data. When the application is inactive, location data is not detected.`
  String get location_permission_desc {
    return Intl.message(
      'To ensure the operation of the application during use, this application collects location data. When the application is inactive, location data is not detected.',
      name: 'location_permission_desc',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Add Ads`
  String get add_ads {
    return Intl.message(
      'Add Ads',
      name: 'add_ads',
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
      Locale.fromSubtags(languageCode: 'kz'),
      Locale.fromSubtags(languageCode: 'qq'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uz'),
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
