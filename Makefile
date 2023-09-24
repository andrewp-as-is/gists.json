all:
	bash -l -c "python3 -m github_gists_json" > gists.json
	bash -l -c "python3 -m github_private_gists_json" > private_gists.json

