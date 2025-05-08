#!/bin/bash
set -e

echo "=== Running Tests ==="

# Example for Java with JUnit:
# java -cp .:junit.jar org.junit.runner.JUnitCore MyTests

# Node.js:
# npm test

# Python:
# pytest


mvn test

echo "Tests completed successfully."

