# Build Runner Instructions for Freezed Annotation

This document provides instructions on how to use `build_runner` to generate code for `freezed_annotation` in your Dart or Flutter project.

## Prerequisites

- Dart SDK (>=2.12.0)
- Flutter SDK (if applicable)

## Setup and Installation

1. **Add Dependencies**: Open your `pubspec.yaml` file and include the following dependencies:

   ```yaml
   dependencies:
     freezed_annotation: ^2.0.0  # Check for the latest version

   dev_dependencies:
     build_runner: ^2.0.0         # Check for the latest version
     freezed: ^2.0.0              # Check for the latest version

## ClI
1. **Run Command**:lutter pub run build_runner build
