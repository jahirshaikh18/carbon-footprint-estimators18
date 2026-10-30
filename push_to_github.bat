@echo off
title Push Carbon Footprint Estimator to GitHub
echo ========================================================
echo   Carbon Footprint Estimator - GitHub Deployment Script
echo ========================================================
echo.
echo Target Repository: https://github.com/jahirshaikj/carbon-footprint-estimator.git
echo.
echo Step 1: Kripya browser me https://github.com/new open karke
echo         'carbon-footprint-estimator' naam se Public repo create karein.
echo.
echo Step 2: Jab repo ban jaye, tab yahan koi bhi key press karein...
pause
echo.
echo Pushing code to GitHub...
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo ========================================================
    echo  [SUCCESS] Code successfully GitHub par push ho gaya!
    echo  Repo URL: https://github.com/jahirshaikj/carbon-footprint-estimator
    echo ========================================================
) else (
    echo ========================================================
    echo  [NOTICE] Agar push me error aaya, to check karein ki:
    echo  1. https://github.com/jahirshaikj par login hai
    echo  2. 'carbon-footprint-estimator' repo create kiya gaya hai
    echo ========================================================
)
echo.
pause
