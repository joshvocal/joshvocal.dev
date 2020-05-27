# joshvocal.dev

My personal website written in Flutter.

## Flutter Web

Follow these instructions first to enable Flutter Web

`https://flutter.dev/docs/get-started/web`

### Running Locally

```
flutter run -d chrome
```

## Building the project for web

Before you can host the project, you need to build it.

```
flutter build web
```

### Firebase Configurations

1. Create a new firebase project. Go to hosting.

2. Install Firebase tools

```
npm install -g firebase-tools
```

3. Run the command below and log in using your credentials

```
firebase login
```

4. Run `firebase init` inside the project

5. Select hosting and select your project your just created.

6. At the prompt `What do you want to use as your public directory?` type `build/web` and then `yes` for `Configure as a single-page app (rewrite all urls to /index.html)?`

### Deploy to Firebase Hosting

```
firebase deploy --only hosting
```
