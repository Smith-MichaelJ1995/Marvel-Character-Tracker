# Marvel Impossible Travel Challenge
Project capable of querying Marvel API for Character/Comic records and seeding results into local database for further processing. Integrated latest UI technologies to enhance experience and data readability.

## Design/Reference Architecture
2-tier Flask/MySQL application, each hosted as separate containers, orchestrated via docker-compose.
![Reference Architecture Diagram](artifacts/arch.png?raw=true "Reference Architecture")


## Pre-Req's
### Marvel API
1. Sign up for an api key from the [Marvel Developer Portal](https://developer.marvel.com/).
### System/Software Installation 
0. MANDATORY: Git
1. MANDATORY: Docker + Docker Compose
    - Docker (tested) 20.10.16
    - Docker Compose (tested) v2.6.0
2. MANDATORY: Python 3+ (Generating API Hash & Unit-Testing)
3. OPTIONAL: ".sh" Script Interpreter (I.E: git bash)


## Getting Started
1. Clone Repo: 
    - HTTPS: `git clone https://github.com/Smith-MichaelJ1995/Marvel-Impossible-Travel-Challenge` (Requires GitHub Personal Access Token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) 
    - SSH: `git clone git@github.com:Smith-MichaelJ1995/Marvel-Impossible-Travel-Challenge.git` (Requires SSH Key on VM) https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
2. Key Generation & Test-Case Support: `pip install pyyaml`, `pip install requests`.
3. Generate Marvel API Credentials: `python generate_credentials.py <your-key> <your-secret>`
    - This script will compute your key, timestamp, and hash and environment variables and update the docker-compose.yml file.
4. Build + Run Containers: `sh build.sh`
    - *NOTE: Docker Daemon must be running on VM
    - *NOTE: The Containers are defaulted to run on ports 5050 (app), 32000 (db). If you have services running on these ports locally, either turn them off OR change port #'s in docker-compose.yml*
5. Instantiate Web-Application (New Terminal, Same Directory): `sh run.sh`
6. Open Browser to localhost:5050 ![Homepage](artifacts/homepage.png?raw=true "Homepage")

## Unit Testing
I've created a series of unit-tests to validate records between the database cache & expected record set. Please complete the following steps to confirm validity
0. Spin up DB & Flask containers (Steps #4-5 above).
1. Enter Tests Directory: `cd unit_testing`
2. Invoke Tests: `python unit_tests.py`
3. Confirm Console Output: ![Unit Test Results](artifacts/unit-tests.png?raw=true "Unit Test Results")

## Authors
 - Michael J. Smith
