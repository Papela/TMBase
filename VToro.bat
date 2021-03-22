@echo off
schtasks /Create /TR "C:\Users\Markos\ToroMax\ToroMax.bat" /TN ToroMax /SC ONLOGON /IT
