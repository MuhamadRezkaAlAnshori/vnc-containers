.PHONY: build-fluxbox
build-fluxbox:
	docker build fluxbox -t "mepershin/vnc-container-fluxbox:$(VERSION)"

.PHONY: push-fluxbox
push-fluxbox:
	docker push "mepershin/vnc-container-fluxbox:$(VERSION)"

.PHONY: build-xfce4
build-xfce4:
	docker build xfce4 -t "mepershin/vnc-container-xfce4:$(VERSION)"

.PHONY: push-xfce4
push-xfce4:
	docker push "mepershin/vnc-container-xfce4:$(VERSION)"
