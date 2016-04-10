#  /notrait category=IntegrationTest
& "${ENV:APPVEYOR_BUILD_FOLDER}\packages\OpenCover.4.6.519\tools\OpenCover.Console.exe" -register:user -target:"${ENV:APPVEYOR_BUILD_FOLDER}\packages\xunit.runner.console.2.1.0\tools\xunit.console.x86.exe" -targetargs:"${ENV:APPVEYOR_BUILD_FOLDER}\Managed.Adb.Tests\bin\Debug\Managed.Adb.Tests.dll" -filter:"+[Managed.Adb]*  -[Managed.Adb]Managed.Adb.Properties.*" -excludebyattribute:*.ExcludeFromCodeCoverage* -hideskipped:All -output:"${ENV:APPVEYOR_BUILD_FOLDER}\managed.adb.coverage.xml"
pip install codecov
codecov -f "${ENV:APPVEYOR_BUILD_FOLDER}\managed.adb.coverage.xml" -X gcov