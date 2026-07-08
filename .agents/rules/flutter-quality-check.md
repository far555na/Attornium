---
trigger: always_on
---

# Flutter Quality Check Rule

Before finishing any task in this Flutter project, always verify that the code is clean and error-free.

## Required Checks

After making code changes, always run:

```bash
flutter analyze
```

If `flutter analyze` shows any errors or warnings caused by the changes, fix them before finishing the task.

## Formatting

Before finalizing, also run:

```bash
dart format .
```

## Tests

If the project has tests, run the relevant tests:

```bash
flutter test
```

For small changes, run only the related tests when possible.

## Completion Rule

Do not mark the task as complete until:

* `flutter analyze` passes
* Formatting is applied
* Relevant tests pass, if tests exist
* No new errors are introduced

## If Something Cannot Be Fixed

If an error cannot be fixed safely, explain clearly:

* What command was run
* What error remains
* Why it could not be fixed
* What file or area needs attention

Never ignore analysis errors or silently finish with unresolved issues.
