<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>Back End</title>
  </head>
  <body>
    <form action="scripts/conta.php">
      <label for="inferior">Insira o Limite Inferior:</label>
        <input type="number" name="inferior" id="inferior" min=0 steps=1>
      <label for="superior">Insira o Superior Inferior:</label>
        <input type="number" name="superior" id="superior" min=0 steps=1>
        <button id="Calcular">CALCULAR</button>
    </form>
  </body>
</html>
