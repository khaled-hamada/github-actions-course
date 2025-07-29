#!/bin/bash

#src/test.sh
# Ensure the script is executable
chmod +x src/app.js

echo "Running Test Suite..."
echo "===================="

# Test 1: Passing test case
EXPECTED_OUTPUT="Hello, Test!"
ACTUAL_OUTPUT=$(node src/app.js Test)
if [ "$ACTUAL_OUTPUT" == "$EXPECTED_OUTPUT" ]; then
    echo "✅ Test 1 passed: Output is as expected."
else
    echo "❌ Test 1 failed: Expected '$EXPECTED_OUTPUT', but got '$ACTUAL_OUTPUT'."
fi

# Test 2: Failing test case (intentionally different expected output)
EXPECTED_OUTPUT_FAIL="Hello, World!"
ACTUAL_OUTPUT_FAIL=$(node src/app.js Test)
if [ "$ACTUAL_OUTPUT_FAIL" == "$EXPECTED_OUTPUT_FAIL" ]; then
    echo "✅ Test 2 passed: Output is as expected."
else
    echo "❌ Test 2 failed (as expected): Expected '$EXPECTED_OUTPUT_FAIL', but got '$ACTUAL_OUTPUT_FAIL'."
    echo "   This demonstrates a failing test case without breaking the script."
fi

echo "===================="
echo "Test suite completed successfully!"