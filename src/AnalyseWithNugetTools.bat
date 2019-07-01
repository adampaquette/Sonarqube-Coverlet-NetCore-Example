ECHO CURRENTLY NOT WORKING! FIX IT PLEASE
dotnet build-server shutdown
pause
dotnet sonarscanner begin /k:"Coverlet" /d:sonar.cs.opencover.reportsPaths=coverage.opencover.xml /d:sonar.coverage.exclusions="**Test*.cs" /d:sonar.verbose=true
pause
dotnet clean
pause
dotnet build
pause
REM https://github.com/tonerdo/coverlet/issues/357
dotnet test Coverlet.sln /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:Exclude="[xunit*]*" /maxcpucount:1 /p:CoverletOutput="../coverage.opencover.xml" /p:MergeWith="../coverage.opencover.xml"
pause
dotnet sonarscanner end
pause