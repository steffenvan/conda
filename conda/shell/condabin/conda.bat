@REM Copyright (C) 2012 Anaconda, Inc
@REM SPDX-License-Identifier: BSD-3-Clause
@IF NOT DEFINED CONDA_EXE @SET "CONDA_EXE=%~dp0..\Scripts\conda.exe"

@IF [%1]==[activate]   "%~dp0_conda_activate" %*
@IF [%1]==[deactivate] "%~dp0_conda_activate" %*

@setlocal
@for %%B in (%~dp0.) do @set PATH=%%~dpB;%%~dpBLibrary\mingw-w64\bin;%%~dpBLibrary\usr\bin;%%~dpBLibrary\bin;%%~dpBScripts;%%~dpBbin;%PATH%
@CALL "%CONDA_EXE%" %*
@endlocal

@IF %errorlevel% NEQ 0 EXIT /B %errorlevel%

@IF [%1]==[install]   "%~dp0_conda_activate" reactivate
@IF [%1]==[update]    "%~dp0_conda_activate" reactivate
@IF [%1]==[upgrade]   "%~dp0_conda_activate" reactivate
@IF [%1]==[remove]    "%~dp0_conda_activate" reactivate
@IF [%1]==[uninstall] "%~dp0_conda_activate" reactivate
