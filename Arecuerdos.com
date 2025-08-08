<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>A recuerdos</title>
    <style>
        /* Estilos generales */
        body {
            background-color: #0d1117; /* Fondo azul oscuro */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #e6edf3; /* Texto claro */
        }

        /* Estilo del encabezado */
        header {
            background-color: #161b22; /* Tono más claro de azul oscuro para el encabezado */
            color: #58a6ff; /* Azul brillante para el título */
            padding: 30px;
            text-align: center;
            border-bottom: 2px solid #2f3336;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        header p {
            margin: 5px 0 0;
            font-size: 1.2em;
            color: #8b949e;
        }

        /* Estilo del contenedor principal de fotos */
        .photo-gallery {
            max-width: 1200px;
            margin: 40px auto;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        /* Estilo de cada cuadro de foto */
        .photo-card {
            background-color: #1e262f; /* Fondo del cuadro */
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            border: 1px solid #2f3336;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            position: relative; /* Para el efecto de superposición */
        }

        .photo-card:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.7);
        }

        .photo-card img {
            width: 100%;
            height: auto;
            display: block;
        }

        .photo-card-info {
            padding: 15px;
            text-align: center;
        }

        .photo-card-info h3 {
            margin: 0;
            color: #58a6ff;
            font-size: 1.2em;
        }
    </style>
</head>
<body>

    <header>
        <h1>A recuerdos</h1>
        <p>recuerdos.com</p>
    </header>

    <div class="photo-gallery">
        
        <div class="photo-card">
            <img src="dfgkldfgldgldlggldfldf.jpg" alt="Descripción de la imagen 1">
            <div class="photo-card-info">
                <h3>Recuerdo 1</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="ghgfkkho5505404040044.jpg" alt="Descripción de la imagen 2">
            <div class="photo-card-info">
                <h3>Recuerdo 2</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="fdfkdfkgdfgkldlg9594o40o4.jpg" alt="Descripción de la imagen 3">
            <div class="photo-card-info">
                <h3>Recuerdo 3</h3>
            </div>
        </div>

        <div class="photo-card">
            <img src="ghhdfhdfhdf505049494.jpg" alt="Descripción de la imagen 4">
            <div class="photo-card-info">
                <h3>Recuerdo 4</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="rhrthtrhtrhtr67567575675675546.jpg" alt="Descripción de la imagen 5">
            <div class="photo-card-info">
                <h3>Recuerdo 5</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="trhtrkhhtlhl505050544'4.jpg" alt="Descripción de la imagen 6">
            <div class="photo-card-info">
                <h3>Recuerdo 6</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="fdvdfvdbddfbfd546754654.jpg" alt="Descripción de la imagen 7">
            <div class="photo-card-info">
                <h3>Recuerdo 7</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="kjdgkdgkdskdskfds.jpg" alt="Descripción de la imagen 8">
            <div class="photo-card-info">
                <h3>Recuerdo 8</h3>
            </div>
        </div>
        
        <div class="photo-card">
            <img src="ghgfhfghgfhfg5676756567575.jpg" alt="Descripción de la imagen 9">
            <div class="photo-card-info">
                <h3>Recuerdo 9</h3>
            </div>
        </div>

    </div>

</body>
</html>