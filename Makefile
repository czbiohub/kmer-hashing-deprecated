docker:
	docker build -t czbiohub/kmer-hashing .

docker_push:
	sudo docker login
	sudo docker push czbiohub/kmer-hashing
	docker images
