@set TOOLS_DIR=tools
@set MSYS2_DL=%TOOLS_DIR%\msys64.tar.gz
@set MSYS2_PATH=%CD%\%TOOLS_DIR%\msys64

@set PATH=%MSYS2_PATH%\mingw64\bin;%MSYS2_PATH%\usr\include;%MSYS2_PATH%\usr\bin;%PATH%

@if %1==setup @goto :setup
@if %1==build @goto :build
@if %1==clean @goto :clean
@if %1==test @goto :test

:setup
@rem Environment configuration
@set MSYS2_URL=https://disk.mts.rs/shares/9vnNEjF8LdSSU0XrtOVEcdRRAukzb57g9E/msys64.tar.gz

@if not exist "%TOOLS_DIR%" (
    @mkdir "%TOOLS_DIR%"
)

@if not exist %MSYS2_PATH% (
    @if not exist "%MSYS2_DL%" (
        @echo MSYS2 not found, downloading...
        curl -k -o "%MSYS2_DL%" "%MSYS2_URL%"
    )
	@if not exist "%MSYS2_PATH%" (
        @echo @echo Extracting MinGW...
        tar -xf "%MSYS2_DL%" -C %TOOLS_DIR%
    )
)
@goto End1

:build

make

@goto End1

:test
bash scripts/run_tests.sh -run

@goto End1

:clean
@RD /S /Q bin obj test_results

@goto End1

:End1





