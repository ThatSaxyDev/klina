import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:klina/features/auth/views/login_view.dart';
import 'package:klina/features/base_nav/wrapper/base_nav_wrapper.dart';
import 'package:klina/shared/app_routes.dart';
import 'package:routemaster/routemaster.dart';

//!logged out routes
RouteMap loggedOutRoute = RouteMap(routes: {
  AppRoutes.base: (_) => const MaterialPage(child: LoginView()),
});

//!logged in routes
RouteMap loggedInRoute = RouteMap(
  routes: {
    AppRoutes.base: (_) => const MaterialPage(
          child: BaseNavWrapper(),
        ),
    // AppRoutes.createOrg: (_) => const MaterialPage(
    //       child: CreateOrganisationView(),
    //     ),
    // AppRoutes.baseNav: (_) => const MaterialPage(
    //       child: BaseNavWrapper(),
    //     ),
    // AppRoutes.project: (routeData) => MaterialPage(
    //       child: ProjectVersionsView(
    //         projectName: routeData.pathParameters['projectname']!,
    //       ),
    //     ),
    // AppRoutes.version: (routeData) => MaterialPage(
    //       child: VersionBugsView(
    //         versionName: routeData.pathParameters['versionname']!,
    //         projectName: routeData.pathParameters['projectname']!,
    //       ),
    //     ),
    // AppRoutes.openBugs: (_) => const MaterialPage(
    //       child: OpenBugsView(),
    //     ),
    // '/profile/:userId': (routeData) => MaterialPage(
    //       child: OtherUserProfileView(
    //         userId: routeData.pathParameters['userId']!,
    //       ),
    //     ),
    // '/post/:postId': (routeData) => MaterialPage(
    //       child: PostView(
    //         postId: routeData.pathParameters['postId']!,
    //       ),
    //     ),
    // '/approval-status': (_) => const MaterialPage(
    //       child: AppprovalStatusView(),
    //     ),
    // '/add-post/:from': (routeData) => MaterialPage(
    //       child: AddPostView(
    //         isFromCommunity: routeData.pathParameters['from']!,
    //       ),
    //     ),
    // '/bookmarks': (routeData) => const MaterialPage(
    //       child: BookmarksView(),
    //     ),
    // // '/create-community': (_) => const MaterialPage(
    // //       child: CreateCommunityScreen(),
    // //     ),
    // '/com/:name': (route) => MaterialPage(
    //       child: CommnunityProfileView(
    //         name: route.pathParameters['name']!,
    //       ),
    //     ),
    // '/com/:name/community-settings/:name': (routeDate) => MaterialPage(
    //       child: CommunitySettingsView(
    //         name: routeDate.pathParameters['name']!,
    //       ),
    //     ),
    // '/com/:name/community-settings/:name/edit-community/:name': (routeData) =>
    //     MaterialPage(
    //       child: EditCommunityView(
    //         name: routeData.pathParameters['name']!,
    //       ),
    //     ),
    // '/com/:name/community-settings/:name/add-mods/:name': (routeData) =>
    //     MaterialPage(
    //       child: AddModsView(
    //         name: routeData.pathParameters['name']!,
    //       ),
    //     ),
    // '/image/:url': (routeData) => MaterialPage(
    //       child: ImageView(
    //         imageUrl: routeData.pathParameters['url']!,
    //       ),
    //     ),
    // '/edit-profile': (routeData) => const MaterialPage(
    //       child: EditProfileView(),
    //     ),
  },
);
