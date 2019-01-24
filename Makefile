.PHONY: ba-image

ba-image: .last-ba-build
	@:

.last-ba-build: Dockerfile script/lib/processor script/lib/vars/ script/lib/colors script/tests/
	docker build \
		--build-arg user=${container_user} \
		--build-arg workdir=${container_workdir_abspath} \
		-t ${image_name} \
		${projectrootdir_abspath} \
		-f Dockerfile
	@touch ${projectrootdir_abspath}/.last-ba-build
