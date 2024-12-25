#!/usr/sbin/dtrace -s

BEGIN
{
    printf("Tracing Chrome open events...\n");
}

proc:::exec-success
/execname == "Google Chrome"/
{
    printf("%Y - Chrome opened\n");
}
