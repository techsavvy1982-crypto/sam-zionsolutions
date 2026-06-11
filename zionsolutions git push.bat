echo =========================================
echo.

if not exist ".git" (
    echo [ERROR] This folder is not a Git repository.
    echo Please run 'git init' and 'git remote add origin <url>' first.
    pause
    exit /b
)

git status

echo.

echo.
echo Adding all changes...
git add . || (echo [ERROR] Failed to add files. & pause & exit /b)

echo Committing...
git commit -m "%MSG%" || (echo [ERROR] Failed to commit. & pause & exit /b)

echo Pushing to GitHub...
git push origin main || (echo [ERROR] Push failed. Check your internet or SSH key. & pause & exit /b)

echo.
echo =========================================
