mkdir build
cd build

:: Configure.
cmake -D CMAKE_INSTALL_PREFIX=%PREFIX% ^
      -D ENABLE_OS_SPECIFIC_INSTALL=ON ^
      -D ENABLE_MATCH=OFF ^
      -D ENABLE_PETSC=OFF ^
      -D ENABLE_SLEPC=OFF ^
      -D CMAKE_C_COMPILER=/msys64/mingw32/bin/gcc.exe ^
      -D CMAKE_CXX_COMPILER=/msys64/mingw32/bin/g++.exe ^
      -D CMAKE_Fortran_COMPILER=/msys64/mingw32/bin/gfortran.exe ^
      -D CMAKE_RC_COMPILER=/msys64/mingw32/bin/windres.exe ^
      %SRC_DIR%
if errorlevel 1 exit 1

:: Build.
make package
if errorlevel 1 exit 1

:: Test.
ctest -D Experimental --output-on-failure
if errorlevel 1 exit 1

:: Install.
make install
if errorlevel 1 exit 1
