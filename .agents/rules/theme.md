---
trigger: always_on
---

# Antigravity Rule: App Theme

Always use this file as the single source of truth for app styling:

```txt
lib/core/theme/app_theme.dart
```

## Main Theme Rule

All shared app design values must be defined in `app_theme.dart`.

This includes:

- Colors
- ColorScheme
- Typography
- TextTheme
- Button styles
- Card styles
- InputDecoration styles
- AppBar style
- NavigationBar style
- BottomNavigationBar style
- Dialog style
- BottomSheet style
- Icon styles
- Border radius
- Shadows
- Spacing values if reused globally

## Do Not Hard-Code Repeated Styles

Do not repeatedly hard-code styles inside pages or widgets.

Avoid this:

```dart
color: Color(0xFF0B1020)
```

Avoid this:

```dart
TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
)
```

Avoid this:

```dart
BorderRadius.circular(16)
```

when the value is part of the app design system.

## Use Theme Values Instead

Use values from the app theme.

Preferred:

```dart
color: Theme.of(context).colorScheme.primary
```

Preferred:

```dart
style: Theme.of(context).textTheme.titleMedium
```

Preferred:

```dart
Theme.of(context).cardTheme
```

## Adding New Styles

If a new reusable style is needed, add it to:

```txt
lib/core/theme/app_theme.dart
```

If the style does not fit inside normal Flutter `ThemeData`, create a theme extension in:

```txt
lib/core/theme/
```

Example:

```txt
lib/core/theme/app_theme.dart
lib/core/theme/app_spacing.dart
lib/core/theme/app_radius.dart
lib/core/theme/app_shadows.dart
```

But `app_theme.dart` must still remain the main theme entry point.

## Feature UI Rule

Feature pages and widgets should use the central theme.

They should not define their own separate app-wide colors, fonts, shadows, or component styles.

Allowed only for one-off styling:

```dart
color: Colors.transparent
```

or a style that is truly unique to one small widget and not repeated elsewhere.

## Refactor Rule

When editing existing UI code:

1. Check for repeated inline colors, text styles, radius, shadows, and spacing.
2. Move reusable styling into `lib/core/theme/app_theme.dart`.
3. Replace hard-coded values with `Theme.of(context)` or app theme constants.
4. Keep UI files clean and focused on layout.

## Final Rule

Never create a second competing theme file.

Never scatter app-wide styling across multiple screens.

Always keep reusable styling centralized under:

```txt
lib/core/theme/app_theme.dart
```
