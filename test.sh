#!/bin/bash

echo "Running application tests..."

if [ ! -f index.html ]; then
    echo "❌ Test failed: index.html not found"
    exit 1
fi

if ! grep -q "Azure CI/CD Deployment Successfully Updated" index.html; then
    echo "❌ Test failed: Expected heading not found"
    exit 1
fi

echo "✅ All tests passed!"
