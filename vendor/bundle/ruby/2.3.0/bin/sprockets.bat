@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\dev\Ruby23-x64\bin\ruby.exe" "C:/dev/workspaces/tweetrail3/vendor/bundle/ruby/2.3.0/bin/sprockets" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\dev\Ruby23-x64\bin\ruby.exe" "%~dpn0" %*
