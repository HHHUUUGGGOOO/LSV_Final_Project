# LSV_Final_Project
- Threshold logic synthesis

# Execution Command (step by step)
- cd ../or-tools
- make third_party
- cd ..
- make 
- ./abc
- read <filename_with_path>
- threshold_optimize <max_fanin_num>

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
- "abcl" package needs to be installed (git clone https://github.com/abseil/abseil-cpp.git)

