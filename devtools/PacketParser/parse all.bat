@echo off
for /f "delims=^" %%a in ('dir /b *.log') do call :process "%%a"
PacketParser.exe -populate eq2_test
PAUSE
goto :eof

:process
PacketParser.exe -spawns -spells -items %1%2
move %1 Parsed

