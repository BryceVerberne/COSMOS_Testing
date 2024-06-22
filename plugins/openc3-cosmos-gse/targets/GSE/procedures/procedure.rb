# Script Runner test script
cmd("GSE EXAMPLE")
wait_check("GSE STATUS BOOL == 'FALSE'", 5)
