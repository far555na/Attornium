---
trigger: always_on
---

# Antigravity Rules: Feature-Based MVVM

Always build and refactor this project using **feature-based MVVM architecture**.

## Project Structure

Use this structure:

```txt
lib/
  core/
    routing/
    theme/
    utils/
    widgets/
    services/

  features/
    feature_name/
      data/
        datasources/
        models/
        repositories/
      domain/
        entities/
        repositories/
        usecases/
      presentation/
        pages/
        widgets/
        view_models/
```

Do not organize the app mainly like this:

```txt
lib/screens/
lib/models/
lib/services/
lib/providers/
```

Only put files in `core/` when they are shared by multiple features.

## Main Rule

Every new file must belong to a feature unless it is truly shared.

Before creating a file, decide:

1. What feature owns it?
2. Is it UI, ViewModel, domain logic, or data access?
3. Does it belong in `features/` or `core/`?

## Layer Responsibilities

### Presentation

Location:

```txt
features/feature_name/presentation/
```

Contains pages, widgets, and ViewModels.

UI should only:

- Display state
- Call ViewModel actions
- Show loading, success, empty, and error states

UI must not:

- Call APIs directly
- Read files directly
- Access database directly
- Contain business logic

## ViewModel Rules

ViewModels belong in:

```txt
presentation/view_models/
```

ViewModels should:

- Hold screen state
- Handle user actions
- Call use cases or repositories
- Convert results into UI state

ViewModels must not:

- Use `BuildContext`
- Show dialogs or SnackBars directly
- Call APIs directly
- Access database or files directly
- Contain widget code

## Domain Rules

Domain belongs in:

```txt
domain/
```

Domain contains:

- Entities
- Repository contracts
- Use cases

Domain must stay pure.

It must not depend on Flutter, UI, API clients, database packages, or platform plugins.

## Data Rules

Data belongs in:

```txt
data/
```

Data contains:

- Models
- Data sources
- Repository implementations

Data layer handles:

- API calls
- Local storage
- Asset loading
- Platform services
- Mapping models to entities

## Repository Rules

Repositories should hide data details from the rest of the app.

Repository contracts go in:

```txt
domain/repositories/
```

Repository implementations go in:

```txt
data/repositories/
```

Repositories should return domain entities, not raw API models.

## Model vs Entity

Use:

```txt
domain/entities/
```

for business objects.

Use:

```txt
data/models/
```

for API, database, asset, or DTO objects.

Models should map to entities.

## Riverpod Rules

Use Riverpod for dependency injection and state management.

Use:

- `ConsumerWidget` for normal screens
- `ConsumerStatefulWidget` only when lifecycle is needed
- ViewModel providers for screen logic

Do not put business logic directly inside widgets.

## State Rules

Complex screens should have clear states:

- Initial
- Loading
- Success
- Empty
- Error

Avoid many unrelated booleans like:

```dart
isLoading
hasError
isSuccess
```

when one state class is clearer.

## Naming Rules

Use clear names:

```txt
case_input_page.dart
case_input_view_model.dart
case_input_state.dart
lawyer_repository.dart
lawyer_repository_impl.dart
lawyer_remote_data_source.dart
```

## Dependency Rule

Dependencies must not point backward.

Allowed direction:

```txt
presentation → domain
data → domain
```

Not allowed:

```txt
domain → data
domain → presentation
data → presentation
```

## Service Rule

Use services only for technical work such as camera, NFC, OCR, storage, or face matching.

Shared services go in:

```txt
core/services/
```

Feature-specific services go in:

```txt
features/feature_name/data/datasources/
```

## Refactor Rule

When refactoring:

1. Keep behavior the same unless asked.
2. Move files into the correct feature.
3. Separate UI, state, domain logic, and data access.
4. Rename files clearly.
5. Update imports.
6. Remove unused code safely.

## Final Rule

Never generate code that breaks feature-based MVVM.

If a request would break the architecture, explain the problem and suggest the correct structure before coding.
