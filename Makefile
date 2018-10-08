all: clean environment.yml environment_no_versions.yml

clean:
	rm environment.yml

docker:
	docker build -t czbiohub/kmer-hashing .

docker_push:
	sudo docker login
	sudo docker push czbiohub/kmer-hashing
	docker images

environment.yml:
	# grep -v ignores lines starting with "prefix" and "name" to make it portable
	conda env export | grep -E -v '^prefix|^name' > environment.yml

environment_no_versions.yml:
	cut -f 1 -d '=' environment.yml > environment_no_versions.yml