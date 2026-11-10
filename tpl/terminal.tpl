<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="color-scheme" content="dark light">
  <title>{{ ship.nm }} ({{ ship.fl }})</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../assets/terminal.css">
  <link rel="shortcut icon" href="../assets/favicon.png">
</head>
<body>
<main>
  <p><input disabled value="{{ship.nm}}"></p>
  <p><input placeholder="Enter Ship Name"></p>
  <p><label>Leadership <input type="number" min="2" max="10"></label></p>
  <p><label>Hits <input type="number" min="0" max="{{ship.hp}}" value="{{ship.hp}}"></label></p>
</main>
</body>
</html>
