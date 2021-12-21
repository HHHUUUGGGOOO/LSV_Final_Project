# LSV_Final_Project
- Threshold logic synthesis

# Execution Command
- make (if wanna speed up --> use "make -j8")
- ./abc

# Framework
- src 
    -- ext-Final (our main .cpp/.h)

- testcase
    -- Basic circuits that can be read by abc

- ILP_solver
    -- C++ ILP solver package

- abc
    -- other files and folders are duplicated from LSV-PA
    -- src/base/ver/verCore.c --> Ver_ParseGateStandard() has been modified to read verilog file

#  Note
- Remember to modify "Makefile" and "src/ext-Final/module.make" if needed
- "src/ext-Final/module.make" only need to add ".cpp" file, not ".h"