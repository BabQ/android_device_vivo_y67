#!/bin/sh

echo "Now cleaning the patch..."

cd frameworks/av
rm -rf *
git checkout -- . && git clean -df
rm -rf .git/rebase-apply
cd ../..

cd frameworks/base
rm -rf *
git checkout -- . && git clean -df
rm -rf .git/rebase-apply
cd ../..

cd frameworks/native
rm -rf *
git checkout -- . && git clean -df
rm -rf .git/rebase-apply
cd ../..

cd bionic
rm -rf *
git checkout -- . && git clean -df
rm -rf .git/rebase-apply
cd ..

cd system/core
rm -rf *
git checkout -- . && git clean -df
rm -rf .git/rebase-apply
cd ../..

cd system/sepolicy
rm -rf *
git checkout -- . && git clean -df
rm -rf .git/rebase-apply
cd ../..

echo "Cleaned the patch successfully"