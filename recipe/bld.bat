mkdir build
cd build

:: Configure.
cmake -G "NMake Makefiles" ^
      -D CMAKE_INSTALL_PREFIX=%PREFIX% ^
      -D BLAS_LAPACK_LIBRARIES=%PREFIX%\Library\lib ^
      -D ENABLE_OS_SPECIFIC_INSTALL=OFF ^
      -D ENABLE_MATCH=OFF ^
      -D ENABLE_PETSC=OFF ^
      -D ENABLE_SLEPC=OFF ^
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
