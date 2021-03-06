<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap\css/bootstrap.min.css">
	<script src="js/jquery-3.1.1.js"></script>        
        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/jquery-3.2.1.js"></script>
	<script src="bootstrap\js/bootstrap.min.js"></script>
	<style>
	.margin {margin-bottom: 45px;}
	.bg-1 { 
      background-color: #2e74b4; 
      color: #ffffff;      
      padding-top: 70px;
      padding-bottom: 20px;
    }
    .navbar-nav  li a:hover {
      color: #2e74b4 !important;
    }
    h1{    
    font-family: Calibri;
    font-size: 50pt;    
    font-weight: bold;
    }
    .span-medico{    
    font-family: Calibri;
    font-size: 25pt;
    font-weight: bold;    
	}
	.sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    .row.content {height: 450px}
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    footer {
      background-color: #999999;
      padding: 15px;
    }
    a:hover{
    	text-decoration: none;
    }    
	</style>
        <title>Registro De Usuarios</title>
    </head>
    <body>        
        <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand"><span class="glyphicon glyphicon-home"></span> CESFAM</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">     
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Cerrar sesión</a></li>
                </ul>
            </div>
        </div>
        </nav>

    <div class="container-fluid bg-1 text-center">
      <h1 class="margin">CESFAM<span class="span-medico">Farmacia</span></h1>
    </div>
    <div class="container-fluid">
	<div class="row content">
		<div class="col-sm-2 sidenav">
			<div class="panel-group">
				<div class="panel panel-default">
                                    
                                    <div class="panel-heading" style="background-color: #e6e6e6">
					<h4 class="panel-title"><a data-toggle="collapse" href="inicio.jsp">Inicio</a></h4>
                                    </div>				
                                    <div class="panel-heading" style="background-color: #d9d9d9">
					<h4 class="panel-title"><a data-toggle="collapse" href="#collapse2">Pacientes</a></h4>
                                    </div>
                                    <div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body"><a href="listarPacientes">Mantenedor De Pacientes</a></div>
				</div>
                                    
                                    <div class="panel-heading" style="background-color: #e6e6e6">
						<h4 class="panel-title"><a data-toggle="collapse" href="#collapse1">Usuarios</a></h4>
					</div>
				<div id="collapse1" class="panel-collapse collapse">
					<div class="panel-body"><a href="listarUsuarios">Mantenedor De Usuarios</a></div>
				</div>
                                    <div class="panel-heading" style="background-color: #d9d9d9">
						<h4 class="panel-title"><a data-toggle="collapse" href="#collapse3">Farmacia</a></h4>
					</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body"><a href="listarMedicamentos">Mantenedor De Medicamentos</a></div>
				</div>
				</div>
			</div>
		</div>
            <div class="col-sm-10 text-left"> 
                <h1>Pacientes</h1>                
            </div>        
            <div class="col-md-10 col-md-offset-1" style="margin: 0px; padding: 0px">
                        <div class="panel panel-default panel-table">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col col-xs-12">
                                        <h2 style="margin-bottom: 10px;">Pacientes</h2>
                                    </div>                        
                                </div>
                                <div class="row">
                                    <div class="col col-xs-4 pull-left">
                                        <div>
                                            <input style="margin: 0px" type="text" class="form-control" id="system-search" placeholder="Buscar" />  
                                        </div>
                                    </div>   
                                    <div class="col col-xs-8 text-right">
                                        <div>
                                            <a href="ingresarPaciente.jsp" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-plus"></span> Agregar</a>
                                        </div>
                                    </div>                      
                                </div>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <form method="POST" name="enviarParamsMod" action="personaParamsModificar">
                                <table class="table table-striped table-bordered table-list table-list-search" style="margin: 0px;">
                                    <thead>
                                        <tr>                            
                                            <th class="hidden-xs">Nombre</th>
                                            <th class="col-text">Tipo Administración</th>
                                            <th class="col-text">Fecha de Elaboración</th>
                                            <th class="col-text">Fecha de Vencimiento</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="row" items="${lista}">                                            
                                            <tr>                                                                                            
                                                <td><c:out value="${row.mediNombre}"/></td>
                                                <td><c:out value="${row.mediAdministracion}"/></td>
                                                <td><c:out value="${row.mediFechaElaboracion}"/></td>
                                                <td><c:out value="${row.mediFechaVencimiento}"/></td>                                          
                                                <td align="center">
                                                    <a class="btn btn-info btn-sm" href="mediParamsModificar?id=<c:out value='${row.mediId}'/>"><span class="glyphicon glyphicon-pencil" ></span></a>
                                                    <a class="btn btn-danger btn-sm" href="mediBorrar?id=<c:out value='${row.mediId}'/>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                                </td>                                            
                                        </tr>                                                                              
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
        </div>
    </div>
        
<footer class="container-fluid">
  <p>Copyright</p>
</footer>
    </body>
</html>

