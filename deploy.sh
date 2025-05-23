set -e  # Exit immediately if a command fails

echo "🛠 Building Eleventy site..."
npm run build

echo "🌐 Adding CNAME for custom domain..."
echo "fjalaejeteskorce.org" > _site/CNAME

echo "🚚 Preparing deployment..."
DEPLOY_DIR="_deploy"

# Clean up any previous deploy folder
rm -rf $DEPLOY_DIR
mkdir $DEPLOY_DIR

# Copy the built site into the deploy folder
cp -r _site/. $DEPLOY_DIR/

cd $DEPLOY_DIR

echo "🌿 Initializing temporary git repo..."
git init
git checkout -b gh-pages
git remote add origin git@github.com:kennyhaggard/kisha-korce.git

git add .
git commit -m "Manual Deploy"

echo "🚀 Pushing to gh-pages branch via SSH..."
git push --force origin gh-pages

# Go back to root and clean up
cd ..
rm -rf $DEPLOY_DIR

echo "✅ Deployment complete! Site should now be live."