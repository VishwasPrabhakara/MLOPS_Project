@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "c:\Users\vp140\anaconda3\condabin\conda.bat" activate "d:\ME\MLOPS_Project\mlopsenv"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@d:\ME\MLOPS_Project\mlopsenv\python.exe -Wi -m compileall -q -l -i C:\Users\vp140\AppData\Local\Temp\tmp6_f1unmp -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
