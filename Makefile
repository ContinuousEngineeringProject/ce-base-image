VERSION = ""

build:
	docker build -t ce-base-image .

scan:hub.login scan.run hub.logout

run:
	docker run ce-base-image

history:
	docker image history --no-trunc ce-base-image

publish: hub.login publish.push hub.logout

publish.push:
ifneq ($(VERSION),"")
	docker tag ce-base-image continuousengineeringproject/ce-base-image:$(VERSION)
	docker push continuousengineeringproject/ce-base-image:$(VERSION)
endif
	docker tag ce-base-image continuousengineeringproject/ce-base-image:latest
	docker push continuousengineeringproject/ce-base-image:latest



hub.login:
	cat _ceprojectbot.txt | docker login -u ceprojectbot --password-stdin

hub.logout:
	docker logout

scan.run:
	docker scan ce-base-image