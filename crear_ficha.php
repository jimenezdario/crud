<!doctype html>
<html>
    <head>
        <title>Crear ficha</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="estilos.css" rel="stylesheet"/>
    </head>
    <body>
        <div id="div1" class="container">
            <br>
            <div id="div2">
                <?php session_start(); if(! empty($_SESSION['Tipo_usuario'])) { ?>
                    <img style="width:140px; height:140px;" src="img/senna3.jpg"> <?php } ?>
                    <div id="div3" >
                        
<?php
 if($_SESSION['Tipo_usuario']='ADMIN')
 { 
 ?>
 <form id="formulario" role="form" method="post" action="guardado_ficha.php">
     <div class="col-md-12">
         <strong class="lgris">Ingrese los datos</strong>
         <br>
         <label class="lgris">Crear ficha:</label>
         <div class="form-row">
             <div class="form-group col-xs-2">
             <input class="form-control" type="number" name="numid" min="9999" max="9999999999999" value="" placeholder="Numero de ficha" />
            </div>
            <label class="lgris">Nombre del programa:</label>
            <?php
            include('funciones.php');
            $miconexion=conectar_bd('','sena_bd');
            $resultado=consulta($miconexion,"select * from programa");
            ?>
            <select name="programa">
                <?php
                while($fila=$resultado->fetch_object())
                {
                    ?>
                    <option value="<?php echo $fila->progra_id ?>"> <?php echo $fila->progra_nombre ?></option>
                    <?php
                }
                ?>
            </select>
            <br><br>
            <input style="width: 20%;" class="btn btn-primary" type="submit" value="Guardar" >
            <input style="width: 20%;" class="btn btn-primary" type="button" onclick="location.href ='menu.php'" value="volver">
        </div>
    </form>
    <?php
    }
    else
    {
    echo "No tiene permisos para realizar esta acción";
    }
    ?>
    <br>
</div>
</div>
</div>
</body>
</html>