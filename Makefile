build-solaris-10:
	packer build -force solaris-10/10.11.json

build-all:
	packer build -force solaris-10/10.11.json

clean-box:
	rm -f *.box

clean-builds:
	rm -rf builds

clean-cache:
	rm -rf packer_cache

clean-all:
	rm -rf packer_cache builds *.box
