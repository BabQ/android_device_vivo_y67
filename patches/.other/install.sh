echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bootable/recovery"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/vivo/y67/patches/other/$dir/*.patch
	echo " "
done

dirs="packages/apps/ManagedProvisioning"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/vivo/y67/patches/other/$dir/*.patch
	echo " "
done

dirs="system/sepolicy"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/vivo/y67/patches/other/$dir/sepolicy.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory