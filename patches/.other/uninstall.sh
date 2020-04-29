#!/bin/sh

cd bootable/recovery
git checkout -- . && git clean -df
cd ../..

cd packages/apps/ManagedProvisioning
git checkout -- . && git clean -df
cd ../../..

cd system/core
git checkout -- . && git clean -df
cd ../..

cd system/sepolicy
git checkout -- . && git clean -df
cd ../..

echo "Cleaned the patch successfully"