@echo off
echo ===== RyzenAdj AATU Imported Profile (FIXED) =====
echo Path: C:\Users\Administrator\Documents\ryzenadj-win64\ryzenadj.exe
echo Running as Administrator...
echo.

set RYZENADJ="C:\Users\Administrator\Documents\ryzenadj-win64\ryzenadj.exe"

%RYZENADJ% ^
--tctl-temp=95 ^
--apu-skin-temp=95 ^
--stapm-limit=28000 ^
--fast-limit=28000 ^
--stapm-time=64 ^
--slow-limit=28000 ^
--slow-time=128 ^
--vrm-current=180000 ^
--vrmmax-current=180000 ^
--vrmsoc-current=180000 ^
--vrmsocmax-current=180000 ^
--vrmgfx-current=180000 ^
--max-performance

echo.
echo DONE! Profil AATU berhasil diterapkan.
pause

