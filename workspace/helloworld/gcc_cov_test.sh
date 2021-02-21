#/bin/sh

# Step 1, helloworld and main.gcno generated
gcc --coverage main.c -o helloworld
#gcc -fprofile-arcs -ftest-coverage main.c -o helloworld

# Step 2, main.gcda generated
./helloworld

# Step 3, main.c.gcov generated
gcov main.

echo "Show main.c.gcov"
echo "================================="
cat main.c.gcov
echo "================================="

# Step 4, lcov
lcov --gcov-tool gcov -c -d . -o a.info

# Step 5, genhtml
genhtml a.info -o html

# Step 6, Watch it
firefox ./html/index.html &
