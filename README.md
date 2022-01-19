# LSV_Final_Project
- Threshold logic synthesis

# Execution Command (step by step)
- cd abc
- make 
- cd ../or-tools
- make third_party
- cd ..
- make 
- cd src/ext-Final
- g++ main.cpp
- ./a.out <input_filename_path> <max_fanin_int>

# Framework
- src 
    - ext-Final (our main .cpp/.h)
        - Each filename corresponds to a pseudo function listed in the paper
    - src/abc_file
        - Other files and folders are duplicated from LSV-PA
        - src/base/ver/verCore.c --> Ver_ParseGateStandard() has been modified to read verilog file

- testcase
    - Basic circuits that can be read by abc

- or-tools
    - C++ MIP solver package

#  Note
- Ensure the environment has installed "cmake"
