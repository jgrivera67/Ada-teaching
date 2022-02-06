#!/bin/sh

alr clean
rm -f ../obj/RELEASE/*.gcda
alr build -- -XARRAY_UTILS_BUILD_FLAVOR=coverage
bin/tests
gcov --function-summaries --branch-probabilities ../obj/RELEASE/*.gcda
