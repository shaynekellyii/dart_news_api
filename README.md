# dart_news_api

This repository contains a simple Dart backend that interacts with a public news API for fetching articles.

## Project structure
```
/news_server
    - /lib: Server code not related to routing (e.g. repository, models, utilities)
    - /openapi: openapi spec and generated documentation in Markdown format.
    - /packages: Dart packages that have functionality external to the server (e.g. GNews API client)
    - /routes: Controllers and middleware for API routing.
    - /tests: All tests for the server.
```

## API limit

This app uses the free tier of the GNews API with a daily quota of 100 calls. Basic caching of calls to the GNews API is implemented.

As well, the free tier of the GNews API only returns a small part of the beginning of the article instead of the full article content.

## API features

- Fetch top news articles (can filter fetch count up to 10)
- Search for news articles by keyword
    - Can additionally filter keyword searches by country
- Articles have a `metadata` object which currently includes word frequency and character count.

## API documentation

The API is documented with a YAML openapi spec. Generated markdown docs [can be found here](openapi/generated/).

## Running the project

[Install the Dart SDK](https://dart.dev/get-dart) on your machine.

A Dart version of `>=2.17.0 <3.0.0` is required.

```bash
dart --version
Dart SDK version: 2.18.2 (stable) (Tue Sep 27 13:24:11 2022 +0200) on "macos_x64"
```

This project uses the [dart_frog](https://pub.dev/packages/dart_frog) server framework. To install:

```bash
dart pub global activate dart_frog_cli
```

An API key for [GNews](https://gnews.io) is required to fetch articles.

To run the server (specifying `port` is optional and will default to `8080`):

```bash
cd /path/to/dart_news_api
dart pub get
dart_frog dev --port 8080
✓ Running on http://localhost:8080 (3.4s)
The Dart VM service is listening on http://127.0.0.1:8181/1U6MVRzgf6I=/
The Dart DevTools debugger and profiler is available at: http://127.0.0.1:8181/1U6MVRzgf6I=/devtools/#/?uri=ws%3A%2F%2F127.0.0.1%3A8181%2F1U6MVRzgf6I%3D%2Fws
[hotreload] Hot reload is enabled.
```

Hot reload is enabled on the dev server. Modifying and saving a file while the server is running will reload the app with the changes.

## Running tests

> **_NOTE:_** Code is not 100% covered, but has basic tests. The tests implemented show how further coverage can be added, both in the dart_frog specific routing code and in the plain Dart code.

```bash
cd /path/to/dart_news_api
dart pub get
dart test
```

## Creating a production build

```bash
# Ensure you have Dart and the dart_frog_cli package installed
cd /path/to/dart_news_api
dart pub get
dart_frog build
```

A `Dockerfile` will be generated in the `build` folder. To more info on deploying the server, [see the dart_frog documentation.](https://dartfrog.vgv.dev/docs/category/deploy)

## Regenerating server models

This app uses [freezed](https://pub.dev/packages/freezed) and [build_runner](https://pub.dev/packages/build_runner) to generate models and json converters. To regenerate the models:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Regenerating openapi documentation

Install the [openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator-cli) and run the following:

```bash
cd /path/to/dart_news_api
openapi-generator-cli generate -i openapi.yaml -o ./generated -g markdown
```
