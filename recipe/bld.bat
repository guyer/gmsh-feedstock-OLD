mkdir build
cd build

:: Configure.
cmake -G "NMake Makefiles" ^
      -D BLAS_LAPACK_LIBRARIES=%PREFIX%\Library\lib ^
      %SRC_DIR%
if errorlevel 1 exit 1

:: Build.
nmake
if errorlevel 1 exit 1

:: Test.
ctest
if errorlevel 1 exit 1

:: Install.
nmake install
if errorlevel 1 exit 1
