cd ~/
git clone $DEPLOY_REPO deploy-repo
cd deploy-repo
rm -rf *
cp -r ${RUNNER_TEMP}/* .
git config --global user.name 'Cache Fonts Github Action'
git config --global user.email 'cachethefonts@users.noreply.github.com'
git add -A
git commit -m "prepare font cache"
git push -f
