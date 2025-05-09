#!/bin/bash


set -e

echo "Building the project..."

mvn clean compile


mvn package

# Example: compile Java files
# mkdir -p build
# javac -d build src/*.java

# Or for Node.js project:
# npm install

# Or Python:
# pip install -r requirements.txt

echo  "Build complete!"
