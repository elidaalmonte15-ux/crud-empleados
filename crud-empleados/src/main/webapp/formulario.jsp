<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario</title>
</head>
<body>
<!-- Para recoger el valor de los controles del formulario, es decir,
la informacion del fomulario, en ausencia del lenguaje JavaScript, el atritubuto
principal es el atributo name de los elementos o controles de entrada, como 
pueden ser los input y el elemento select.

Cuando se pulsa el boton, que realmente no es boton, sino un elemento input con 
el atributo type igual a submit, se genera el evento submit (Un evento es culquier
cosa que ocurre en nuesto documento html y que el navegador web lo notifica para 
que hagamos algo en respuesta) que, automaticamente recogera todo lo que se este
en los controles del formulario y se lo asignara a los correspondientes atributos
name, y se enviara a la direccion (URL)especificada en el atributo action que esta
en la etiqueta de apertura del elemento form (formulario), mediante el protolo HTTP
(Hipertext Transfer Protocol) que es un protocol especialmente diseñado para
transmitir paginas web, imagenes, archivos de audio y video, es decir, todo 
lo que se intercambie entre un cliente y un servidor WEB. Los metodos o verbos del 
protocolo HTTP son varios (get, post, put, delete, update, patch, etc), siendo los 
mas utilizados el get y el post.Utilizando el metodo get del protocolo HTTP toda
la info que se envia el servidor es visible en la URL, por lo cual no es el metodo
recomendado para enviar los datos de un formulario, donde podria existir info
sensible, como cuentas bancarias, dni, etc, y por tanto un formulario se envia por
post y la info viaja en el cuerpo, no en la cabecera, de la peticion.Inincialmente dejamos el motodo get y como valor del atributo action dejamo #
para comprobar el mecanismo del evento submit, es decir, comprobar que en la URL
vemos cada informacion recogida y asociada a su correspondiente atributo name.

Cuando ya hemos realizado esta comprobacion, en el atributo action escribimos el 
Servlet o Controlador que va a recibir los datos del formulario, y el metodo lo 
cambiamos a post -->
<!-- El mismo servlet AltaController que recibe la peticion de mostrar el 
formulario puede recibir los datos del formulario, porque recibe las peticiones
por metodos diferentes del protocolo HTTP (get para mostrar el formulario y post
para recibir los datos del formulario -->

	<h1>Formulario de Alta y Modificacón de Empleado</h1>

	<fieldset>
		<legend>Formulario Alta/Modificacion</legend>
		<form action="#" method="get">
			<label for="nombre">Nombre: </label> <input id="nombre"name="nombre" type="text"
				placeholder="Su nombre aqui, porfa"
				title="Se solicita el nombre del empleado para darle de alta">
			<label for="primerApellido">primer Apellido</label> <input
				id="primerApellido" name="primer Apellido"type="text"> title="se solicita prime
			apellido" <label for=>Segundo Apellido:</label>bel <input
				id="SegundoApellido" name="segundoApellido" type="text" placeholder="no es obligatorio">
			<label for="fechaAlta">fecha de Alta:</label> <input id="fechaALTA:" name="fechaAlta"
				type="date"> <label for="Salario">Salario: </label> <input
				id="Salario" name="salario" type="text">
			<fieldset>
				<legend>genero</legend>

				<label for="hombre">Hombre</label> <input id="hombre" type="radio"
					name="genero"value="HOMBRE"> <label for="mujer">Mujer</label> <input
					id="mujer" type="radio" name="genero"value="MUJER"> <label for="otro">Otro</label>
				<input id="otro" type="radio" name="genero"value="otro">

			</fieldset>
			<label for="foto">Foto del empleado: </label> <input id="foto"
				type="file"> <label for="dpto">departamento:</label> <select
				id="dpto"name="dtpo">
				<option ></option>
				<option value="1">RRHH</option>
				<option value="2">Informatica</option>
				<option value="3">contabilidad</option>
			</select> 
			<label for="telefonos">telefono(s):</label> <input id="telefonos"
				type="text" placeholder="uno o varios, separado por;"
				title="uno o varios telefonos separados por el punto y la coma">

			<label for="emails">correo(s):</label> <input id="emails" type="text"
				placeholder="uno o varios, separado por;"
				title="una o varias direcciones de correo separados por el punto y la coma">
			<br> <br> <input type="submit" value="Enviar formulario"
				title="Recoger y enviar la info de los controles del formulario al servidor">


		</form>
	</fieldset>
</body>
</html>