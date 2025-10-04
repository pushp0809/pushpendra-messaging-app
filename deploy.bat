@echo off
echo ===================================
echo   Pushpendra Kumar Tiwari App
echo   Deployment Script
echo ===================================
echo.

echo Step 1: Installing deployment tools...
npm install -g @railway/cli
npm install -g vercel

echo.
echo Step 2: Building frontend...
cd frontend
call npm run build
echo Frontend built successfully!

echo.
echo Step 3: Deploy to Railway (Backend)...
cd ..\backend
echo Please follow the Railway deployment steps:
echo 1. Run: railway login
echo 2. Run: railway new
echo 3. Run: railway add
echo 4. Set environment variables in Railway dashboard
echo.

echo Step 4: Deploy to Vercel (Frontend)...
cd ..\frontend
echo Please follow the Vercel deployment steps:
echo 1. Run: vercel login
echo 2. Run: vercel --prod
echo 3. Set environment variables in Vercel dashboard
echo.

echo ===================================
echo Deployment preparation complete!
echo.
echo IMPORTANT: Update these URLs after deployment:
echo 1. Update VITE_BACKEND_URL in Vercel with Railway URL
echo 2. Update MONGO_URI in Railway with MongoDB Atlas
echo ===================================

pause