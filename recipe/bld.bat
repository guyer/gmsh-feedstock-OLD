mkdir build
cd build

:: Configure.
cmake -D ENABLE_HXT=0 ^
      -D BLAS_LAPACK_LIBRARIES=%PREFIX%\Library\lib ^
      %SRC_DIR%
if errorlevel 1 exit 1

:: Build.
msbuild package.vcxproj
if errorlevel 1 exit 1

:: Test.
ctest
if errorlevel 1 exit 1

:: Install.
nmake install
if errorlevel 1 exit 1
