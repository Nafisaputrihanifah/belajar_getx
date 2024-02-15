// auth_middleware.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // Check authentication status
    bool isAuthenticated =
        true; // Replace with your actual authentication logic

    // Redirect to login page if not authenticated
    if (!isAuthenticated && route != '/login') {
      return RouteSettings(name: '/login');
    }

    return null;
  }
}
