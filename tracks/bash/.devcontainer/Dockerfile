FROM debian

WORKDIR /workspaces/${LOCAL_WORKSPACE_FOLDER_BASENAME}
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt -y upgrade
RUN apt install -y git

# Install Go, to install Exercism
RUN apt -y install --no-install-recommends golang
ENV GOBIN=/usr/local/bin
RUN go install github.com/exercism/cli/exercism@latest

# Install `bats` for BASH testing.
RUN apt -y install bats
