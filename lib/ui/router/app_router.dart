import 'package:auto_route/auto_route.dart';
import 'package:companyeidc/ui/auth/login/login_page.dart';
import 'package:companyeidc/ui/business_name_request/list/business_name_requests_page.dart';
import 'package:companyeidc/ui/company/finder/company_finder_page.dart';
import 'package:companyeidc/ui/company/list/companies_page.dart';
import 'package:companyeidc/ui/company/scanner/scanner_page.dart';
import 'package:companyeidc/ui/company/scanner/scanner_result_page.dart';
import 'package:companyeidc/ui/company_register_request/list/company_register_requests_page.dart';
import 'package:companyeidc/ui/home/home_page.dart';
import 'package:companyeidc/ui/memebership_checker/membership_checker_page.dart';
import 'package:companyeidc/ui/notifications/list/notifications_page.dart';
import 'package:companyeidc/ui/transactions/finder/transaction_finder_page.dart';
import 'package:companyeidc/ui/transactions/list/transactions_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ScannerPage),
    AutoRoute(page: ScannerResultPage),
    AutoRoute(page: CompanyFinderPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: NotificationsPage),
    AutoRoute(page: CompaniesPage),
    AutoRoute(page: MemberShipCheckerPage),
    AutoRoute(page: TransactionFinderPage),
    AutoRoute(page: TransactionsPage),
    AutoRoute(page: BusinessNameRequestsPage),
    AutoRoute(page: CompanyRegisterRequestsPage),
  ],
)
class AppRouter extends _$AppRouter {}
