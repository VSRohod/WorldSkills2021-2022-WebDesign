<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marca D'agua</title>
</head>

<body>
    <form method="post" enctype="multipart/form-data" action="marcaagua.php">
        <label for="arquivo">Esolher a imagem (jpg):</label>
        <input type="file" id="arquivo" name="arquivo" 
                            placeholder="Selecione uma imagem"><br>
        <label for="arqmarca">Escolher a marca d´agua (png)</label>
        <input type="file" id="arqmarca" name="arqmarca"
                            placeholder="Selecione a marca d'agua"><br>
        <label for="texto">Texto da Imagem</label>
        <input type="text" id="texto" name="texto">                    
        
        <input type="submit">
    </form>
</body>
</html>