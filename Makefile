build-and-deploy:
	docker build -t aeronotix/oomkill:$(shell cat .version) -f oomkill/Dockerfile oomkill
	docker push aeronotix/oomkill:$(shell cat .version)
	docker build -t aeronotix/immediate-fail:$(shell cat .version) -f immediate-fail/Dockerfile immediate-fail
	docker push aeronotix/immediate-fail:$(shell cat .version)
	docker build -t aeronotix/completed:$(shell cat .version) -f completed/Dockerfile completed
	docker push aeronotix/completed:$(shell cat .version)
	docker build -t aeronotix/slow-fail:$(shell cat .version) -f slow-fail/Dockerfile slow-fail
	docker push aeronotix/slow-fail:$(shell cat .version)
