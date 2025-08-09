[![.github/workflows/deploy.yml](https://github.com/andersongomes001/dont-starve-together-docker/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/andersongomes001/dont-starve-together-docker/actions/workflows/deploy.yml)

# Docker Server for Don't Starve Together Game

This Docker setup allows you to easily host a dedicated server for the "Don't Starve Together" multiplayer game. Docker provides a lightweight, portable, and self-sufficient environment for running the game server, making it easy to deploy and manage.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your system.
- [klei DontStarveTogether TOKEN](https://accounts.klei.com/account/game/servers?game=DontStarveTogether) Create a token in klei site.

## Usage

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/andersongomes-dev/dont-starve-together-docker.git
   echo "TOKEN" > dont-starve-together-docker/MyDediServer/cluster_token.txt
   ```
