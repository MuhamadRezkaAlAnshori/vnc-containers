.PHONY: build-fluxbox
build-fluxbox:
	docker build fluxbox -t "mepershin/vnc-container-fluxbox:$(VERSION)"

.PHONY: push-fluxbox
push-fluxbox:
	docker push "mepershin/vnc-container-fluxbox:$(VERSION)"
