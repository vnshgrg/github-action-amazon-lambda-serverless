# Github Action for Serverless

This Action wraps the [Serverless Framework](https://serverless.com) to enable common Serverless commands.

## This project is looking for maintainers!

If you would like to be a maintainer of this project, please reach out to one of the active [Serverless organization](https://github.com/serverless) members to express your interest.

Welcome, and thanks in advance for your help!

## Usage

An example workflow to deploy a project with serverless:

```yaml
name: Deploy master branch

on:
  push:
    branches:
      - master

jobs:
  deploy:
    name: deploy
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [14.x]
    steps:
      - uses: actions/checkout@v2
      - name: Use Node.js ${{ matrix.node-version }}
        uses: actions/setup-node@v1
        with:
          node-version: ${{ matrix.node-version }}
      - run: npm ci
      - name: Serverless deploy
        uses: vnshgrg/github-action-amazon-lambda-serverless@nodejs
        with:
          args: deploy
        env:
          SERVERLESS_ACCESS_KEY: ${{ secrets.SERVERLESS_ACCESS_KEY }}
          # or if using AWS credentials directly
          # AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          # AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

Currently only Serverless Version 2.x is supported.

## Usage with plugins

## License

The Dockerfile and associated scripts and documentation in this project are released under the Apache-2 license.
