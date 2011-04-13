# default rule
help:QV:
	echo "Targets:"
	echo "  stage1          complete bootstrap"
	echo "  pkg             build additional packages"
        echo "  world           build stage1 + pkg"
        echo "  rebuild-<pkg>   rebuild single package (V=1 for verbose)"
        echo "  check-sets      show missing and superfluous files"
        echo "  release         make a release (from /)"

PATH=utils:$PATH
<|sed 's/export//' config
<deps
<|recipes

world:V: stage1 pkg

check-sets:V:
        utils/check-sets

release:V:
        utils/release
