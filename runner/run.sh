#!/usr/bin/env zsh

# Please make sure Docker is running before executing this script.

# Must have docker buildx to use buildkit=1.  Please use ./buildx.sh to install this.

# Then store github repo "<username>/<repo-name>" (without quotes) and PAT, also without quotes, in files called "repo.txt" and "token.txt"
DOCKER_BUILDKIT=1 docker build --secret id=TOKEN,src=token.txt --secret id=REPO,src=repo.txt .

# Run the runner
docker run runner