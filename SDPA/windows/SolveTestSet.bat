@echo off

set pp=%CD%
cd ../testSet

for /R %%f in (*.dat-s) do (
    echo solving example %%f ...
    pushd %pp%
    sdpa %%f "%%f.res" > "%%f.log"
    popd
)
cd ../windows
