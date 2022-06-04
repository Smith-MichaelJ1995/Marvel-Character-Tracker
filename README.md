# Marvel Impossible Travel Challenge
Project capable of querying Marvel API for Character/Comic records and seeding results into local database for further processing. Integrated latest UI technologies to enhance experience and data readability.

## Design/Reference Architecture

## Pre-Req's
### Marvel API
1. Sign up for an api key from the [Marvel Developer Portal](https://developer.marvel.com/).
### System/Software Installation 
0. MANDATORY: Git
1. MANDATORY: Docker + Docker Compose
2. MANDATORY: Python 3+ (Generating API Hash & Unit-Testing)
3. OPTIONAL: ".sh" Script Interpreter (I.E: git bash)

## Getting Started
1. Clone Repo: `git clone https://github.com/Smith-MichaelJ1995/Marvel-Impossible-Travel-Challenge`
2. Key Generation & Test-Case Support: `pip install yaml`, `pip install hashlib`, `pip install requests`.
3. Generate Marvel API Credentials: `python generate_credentials.py <your-key> <your-secret>`
4. Build + Run Containers: `sh build.sh`
5. Instantiate Web-Application (New Terminal, Same Directory): `sh run.sh`

## Unit Testing
I've created a series of unit-tests to validate records between the database cache & expected record set. Please complete the following steps to confirm validity
1. Enter Tests Directory: `cd unit_testing`
2. Invoke Tests: `python unit_tests.py`
3. Confirm Console Output: ![Unit Test Results](artifacts/unit_tests.png?raw=true "Unit Test Results")

## Authors
 - Michael J. Smith
