<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugerente</title>
    <style>
        body {
            background-color: #6a4c92; /* Color lila para el fondo */
            font-family: Arial, sans-serif;
            color: yellow;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4b2e83; /* Color caf� para la parte superior */
            padding: 20px;
            text-align: center;
            color: yellow;
        }
        nav {
            display: flex;
            justify-content: space-around;
            background-color: #6a4c92;
            padding: 10px;
        }
        nav a {
            color: yellow;
            text-decoration: none;
            font-weight: bold;
        }
        .content {
            margin: 20px;
        }
        .select-box {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .select-box select, .select-box input {
            padding: 10px;
            font-size: 16px;
        }
        .text-red {
            color: red;
        }
        .form {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .form div {
            width: 45%;
        }
        .calendar {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <header>
        <h1>Tugerente</h1>
    </header>

    <nav>
        <a href="#">Compra Inventarios</a>
        <a href="#">Proveedores</a>
        <a href="#">Clientes</a>
    </nav>

    <div class="content">
        <div class="select-box">
            <label for="reporte">Seleccione su reporte</label>
            <select id="reporte">
                <option value="reporte1">Reporte 1</option>
                <option value="reporte2">Reporte 2</option>
                <option value="reporte3">Reporte 3</option>
            </select>
        </div>

        <div class="select-box">
            <label for="stock">Stock Actual</label>
            <select id="stock">
                <option value="stock1">Stock 1</option>
                <option value="stock2">Stock 2</option>
            </select>
        </div>

        <div class="select-box">
            <label for="sucursal">Sucursal</label>
            <select id="sucursal">
                <option value="sucursal1">Sucursal 1</option>
                <option value="sucursal2">Sucursal 2</option>
            </select>
        </div>

        <div class="select-box">
            <label for="producto">Producto</label>
            <input type="text" id="producto" value="Todos" readonly>
        </div>

        <div class="text-red">
            <p>�Deseas conocer m�s de este reporte?</p>
        </div>

        <div class="form">
            <div>
                <label for="formapago">Forma de pago</label>
                <select id="formapago">
                    <option value="banco_economico">Banco Econ�mico</option>
                    <option value="banco_union">Banco Uni�n</option>
                    <option value="banco_bnb">Banco BNB</option>
                    <option value="banco_mercantil">Banco Mercantil</option>
                    <option value="banco_ganadero">Banco Ganadero</option>
                    <option value="tigo_money">Tigo Money</option>
                </select>
            </div>

            <div>
                <label for="fecha">Fecha</label>
                <input type="date" id="fecha">
            </div>
        </div>

        <div class="calendar">
            <div>
                <label for="filtrar_fecha">Filtrar por fecha de elaboraci�n</label>
                <input type="date" id="filtrar_fecha">
            </div>
        </div>
    </div>
</body>
</html>
