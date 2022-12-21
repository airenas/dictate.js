-include ../../version
#####################################################################################
service=dictate
#####################################################################################
tag=airenas/$(service):$(version)

dbuild: 
	docker build -t $(tag) --build-arg BUILD_VERSION=$(version) -f Dockerfile ./../../

dpush: dbuild
	docker push $(tag)

dscan: dbuild	
	docker scan --accept-license $(tag)
########### END #####################################################################
.PHONY:
	dbuild dpush build 
