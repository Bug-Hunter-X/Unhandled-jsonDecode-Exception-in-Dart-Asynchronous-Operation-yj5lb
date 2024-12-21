# Unhandled jsonDecode Exception in Dart Asynchronous Operation

This repository demonstrates a common error in Dart asynchronous programming: failing to handle exceptions thrown by `jsonDecode` when parsing JSON responses from APIs.  The `bug.dart` file shows the problematic code, and `bugSolution.dart` provides a solution.

## Problem

The original code lacks a specific `catch` block for `FormatException` which can occur when `jsonDecode` encounters invalid JSON.  This results in a crash if the API response is malformed.

## Solution

The improved code includes a `catch` block specifically for `FormatException`. This allows for graceful handling of the error (e.g., logging or displaying a user-friendly message) instead of crashing the application.  Additionally it demonstrates the importance of rethrowing to prevent silent failures.