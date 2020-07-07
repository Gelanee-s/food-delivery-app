import 'package:flutter/material.dart';

enum UserProfileActions { edit_profile, contact_us, console }

extension UserProfileActionsExtension on UserProfileActions {
  String get title {
    switch (this) {
      case UserProfileActions.edit_profile:
        return 'Edit Profile';
      case UserProfileActions.contact_us:
        return 'Contact Us';
      case UserProfileActions.console:
        return 'Console';
      default:
        return null;
    }
  }

  IconData get icon {
    switch (this) {
      case UserProfileActions.edit_profile:
        return Icons.person;
      case UserProfileActions.contact_us:
        return Icons.call;
      case UserProfileActions.console:
        return Icons.settings;
      default:
        return null;
    }
  }
}
