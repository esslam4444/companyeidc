// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:event_bus/event_bus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/api_client/dio_module.dart' as _i35;
import '../application/api_client/interceptors/auth_interceptor.dart' as _i7;
import '../application/api_client/interceptors/error_response_transformer.dart'
    as _i3;
import '../application/api_client/remote_config.dart' as _i6;
import '../application/local/local_storage.dart' as _i5;
import '../application/repositories/auth_repository.dart' as _i21;
import '../application/repositories/business_name_request_repository.dart'
    as _i22;
import '../application/repositories/company_register_request_repository.dart'
    as _i24;
import '../application/repositories/company_repository.dart' as _i26;
import '../application/repositories/notification_repository.dart' as _i16;
import '../application/repositories/people_repository.dart' as _i18;
import '../application/repositories/transaction_repository.dart' as _i19;
import '../application/services/auth_service.dart' as _i12;
import '../application/services/business_name_request_service.dart' as _i13;
import '../application/services/company_register_request_service.dart' as _i14;
import '../application/services/company_service.dart' as _i15;
import '../application/services/notification_service.dart' as _i9;
import '../application/services/people_service.dart' as _i10;
import '../application/services/transactions_service.dart' as _i11;
import '../ui/auth/account_controller.dart' as _i31;
import '../ui/auth/login/login_form.dart' as _i29;
import '../ui/business_name_request/list/business_name_requests_controller.dart'
    as _i23;
import '../ui/company/finder/find_company_action.dart' as _i27;
import '../ui/company/list/companies_controller.dart' as _i33;
import '../ui/company/scanner/check_company_action.dart' as _i32;
import '../ui/company_register_request/list/company_register_requests_controller.dart'
    as _i25;
import '../ui/memebership_checker/membership_checker_action.dart' as _i30;
import '../ui/notifications/list/notifications_controller.dart' as _i17;
import '../ui/transactions/finder/find_transaction_action.dart' as _i28;
import '../ui/transactions/list/transactions_controller.dart' as _i20;
import 'shared_module.dart' as _i34; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final sharedInjectionModule = _$SharedInjectionModule();
    final dioModule = _$DioModule();
    gh.factory<_i3.ErrorResponseTransformer>(
        () => _i3.ErrorResponseTransformer());
    gh.singleton<_i4.EventBus>(sharedInjectionModule.eventBus);
    await gh.singletonAsync<_i5.LocalStorage>(
        () => _i5.SharedPreferencesStorage.init(),
        preResolve: true);
    gh.lazySingleton<_i6.RemoteConfig>(() => _i6.RemoteConfig());
    gh.factory<_i7.AuthInterceptor>(
        () => _i7.AuthInterceptor(get<_i5.LocalStorage>()));
    gh.singleton<_i8.Dio>(dioModule.dio(get<_i7.AuthInterceptor>(),
        get<_i3.ErrorResponseTransformer>(), get<_i6.RemoteConfig>()));
    gh.factory<_i9.NotificationService>(
        () => _i9.NotificationService(get<_i8.Dio>()));
    gh.factory<_i10.PeopleService>(() => _i10.PeopleService(get<_i8.Dio>()));
    gh.factory<_i11.TransactionsService>(
        () => _i11.TransactionsService(get<_i8.Dio>()));
    gh.factory<_i12.AuthService>(() => _i12.AuthService(get<_i8.Dio>()));
    gh.factory<_i13.BusinessNameRequestService>(
        () => _i13.BusinessNameRequestService(get<_i8.Dio>()));
    gh.factory<_i14.CompanyRegisterRequestService>(
        () => _i14.CompanyRegisterRequestService(get<_i8.Dio>()));
    gh.factory<_i15.CompanyService>(() => _i15.CompanyService(get<_i8.Dio>()));
    gh.factory<_i16.NotificationRepository>(
        () => _i16.NotificationRepositoryImpl(get<_i9.NotificationService>()));
    gh.factory<_i17.NotificationsController>(
        () => _i17.NotificationsController(get<_i16.NotificationRepository>()));
    gh.factory<_i18.PeopleRepository>(
        () => _i18.PeopleRepositoryImpl(get<_i10.PeopleService>()));
    gh.factory<_i19.TransactionRepository>(
        () => _i19.TransactionsRepositoryImpl(get<_i11.TransactionsService>()));
    gh.factory<_i20.TransactionsController>(
        () => _i20.TransactionsController(get<_i19.TransactionRepository>()));
    gh.factory<_i21.AuthRepository>(
        () => _i21.AuthRepositoryImpl(get<_i12.AuthService>()));
    gh.factory<_i22.BusinessNameRequestRepository>(() =>
        _i22.BusinessNameRequestRepositoryImpl(
            get<_i13.BusinessNameRequestService>()));
    gh.factory<_i23.BusinessNameRequestsController>(() =>
        _i23.BusinessNameRequestsController(
            get<_i22.BusinessNameRequestRepository>()));
    gh.factory<_i24.CompanyRegisterRequestRepository>(() =>
        _i24.CompanyRegisterRequestRepositoryImpl(
            get<_i14.CompanyRegisterRequestService>()));
    gh.factory<_i25.CompanyRegisterRequestsController>(() =>
        _i25.CompanyRegisterRequestsController(
            get<_i24.CompanyRegisterRequestRepository>()));
    gh.factory<_i26.CompanyRepository>(
        () => _i26.CompanyRepositoryImpl(get<_i15.CompanyService>()));
    gh.factory<_i27.FindCompanyAction>(
        () => _i27.FindCompanyAction(get<_i26.CompanyRepository>()));
    gh.factory<_i28.FindTransactionAction>(
        () => _i28.FindTransactionAction(get<_i19.TransactionRepository>()));
    gh.factory<_i29.LoginFormController>(() => _i29.LoginFormController(
        get<_i21.AuthRepository>(),
        get<_i5.LocalStorage>(),
        get<_i4.EventBus>()));
    gh.factory<_i30.MemberShipCheckerAction>(
        () => _i30.MemberShipCheckerAction(get<_i18.PeopleRepository>()));
    gh.factory<_i31.AccountController>(() => _i31.AccountController(
        get<_i21.AuthRepository>(),
        get<_i5.LocalStorage>(),
        get<_i4.EventBus>()));
    gh.factory<_i32.CheckCompanyAction>(
        () => _i32.CheckCompanyAction(get<_i26.CompanyRepository>()));
    gh.factory<_i33.CompaniesController>(
        () => _i33.CompaniesController(get<_i26.CompanyRepository>()));
    return this;
  }
}

class _$SharedInjectionModule extends _i34.SharedInjectionModule {}

class _$DioModule extends _i35.DioModule {}
