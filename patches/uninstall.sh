#!/bin/sh
cd frameworks/av
git checkout -- . && git clean -df
cd ../..

cd frameworks/base
git checkout -- . && git clean -df
cd ../..

cd frameworks/native
git checkout -- . && git clean -df
cd ../..

cd bionic
git checkout -- . && git clean -df
cd ..

cd system/core
git checkout -- . && git clean -df
cd ../..

cd system/sepolicy
git checkout -- . && git clean -df
cd ../..

echo "Cleaned the patch successfully"