# Port of llama-cpp for iOS

This is a so far unsuccessful attempt to port llama.cpp project to iOS. The code is compiling and running, but the following issues are still present:

- On the Simulator, execution is extremely slow compared to the same on the computer directly. I suspect some compilation flags are not set correctly to use the full set of hardware optimizations.
- On the device (iPhone 14 Pro) process cannot allocate sufficient memory to fit the whole 7B model. In theory, the device has 6 gigabytes of RAM, so the model must fit, however, only three gigabytes are available for the app process to use. I've added an entitlement allowing us to use more RAM, but it did not help. 

# Potential next steps / Ideas for contribution

- Simulator: Figure out the missing compilation flags, match the performance on the simulator and on the Mac
- Device: Use memory-mapped file

# Acknowledgements

Actual llama.cpp code is used, from https://github.com/ggerganov/llama.cpp
