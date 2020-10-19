@echo off

echo "goozo"
set pp=%CD%
cd ../testSet

for /R %%f in (*.dat-s) do (
    pushd %pp%
    sdpa %%f "%%f.result"
    popd
    rem echo %CD%
)
cd ../windows
