#include "minunit.h"

static void test_foo (void)
{
    int foo = 1;
    mu_assert(foo == 1);
    mu_assert(foo == 0);
    mu_assert_with_msg(foo == -1, "error: %d != -1", foo);
}

static void test_bar (int x, int y)
{
    mu_assert_with_msg(x == y, "error: %d != %d", x, y);
    mu_fail("failed");
}

int main (void)
{
    mu_run_test(test_foo);
    mu_run_test_with_args(test_bar, 0, 1);
    mu_summary();
}

