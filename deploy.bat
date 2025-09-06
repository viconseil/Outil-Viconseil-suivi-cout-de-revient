@echo off
echo ========================================
echo    DEPLOIEMENT OUTIL VI CONSEIL
echo ========================================
echo.

REM Vérifier s'il y a des modifications
git status --porcelain > nul
if %errorlevel% neq 0 (
    echo ❌ Erreur lors de la vérification Git
    pause
    exit /b 1
)

REM Afficher le statut
echo 📊 Vérification des modifications...
git status --short

REM Demander confirmation
set /p message="💬 Message du commit (ou ENTER pour message auto): "
if "%message%"=="" (
    for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (
        set mydate=%%c-%%a-%%b
    )
    for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (
        set mytime=%%a:%%b
    )
    set message=chore: mise à jour du %mydate% à %mytime%
)

echo.
echo 🚀 Déploiement en cours...
echo Message: "%message%"
echo.

REM Ajouter tous les fichiers modifiés
git add .
if %errorlevel% neq 0 (
    echo ❌ Erreur lors de l'ajout des fichiers
    pause
    exit /b 1
)

REM Commit
git commit -m "%message%"
if %errorlevel% neq 0 (
    echo ⚠️  Aucun changement à commiter
    pause
    exit /b 0
)

REM Push vers GitHub
git push origin main
if %errorlevel% neq 0 (
    echo ❌ Erreur lors du push vers GitHub
    pause
    exit /b 1
)

echo.
echo ✅ Déploiement réussi !
echo 🌐 Votre outil sera mis à jour sur Vercel dans quelques minutes
echo.
pause