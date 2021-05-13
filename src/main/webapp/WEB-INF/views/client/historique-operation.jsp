<!-- <%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
    <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> -->

<!DOCTYPE html>
<html lang="fr">

<head>
    <title>Espace-Client</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="../img/logo-me.png" alt="GestiBank" width="45" height="45">
                <!-- GestiBank -->
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

            <div class="collapse navbar-collapse" id="navbarsSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">
                            <!-- Home -->
                            <i class="fa fa-home"></i>
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <!--  <li class="nav-item">
                        <a class="nav-link" href="espace-client.html">Mes informations</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="espace-client.html">Mes comptes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="espace-client/virement.html">Virement</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="espace-client/historique-operation.html">Mon historique</a>
                    </li>
                    <!--    <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contact</a>
                    </li> -->

                    <form class="form-inline my-2 my-md-0" data-children-count="1">
                        <input class="form-control py-2 border-right-0 border" type="search" value="Rechercher" aria-label="Search" id="example-search-input" />
                        <span class="input-group-append">
                                      <button class="btn btn-outline-secondary border" type="button">
                                        <!-- Search -->
                                        <i class="fa fa-search"></i>
                                      </button>
                                    </span>

                        <!-- <i class="fa fa-search"></i> -->
                    </form>

                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Déconnexion</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <br>
    <div class="container border">
        <br>
        <h1>Historique des opérations bancaires</h1>
        <br>
        <br>
        <div class="row">
            <!--Occupe 6 colonnes-->
            <div class="col ">
                <label for="numeroCompte"><h3>Numéro de compte:</h3></label>
            </div>
            <div class="col ">
                <input type="text" class="form-control" id="montant" placeholder="${compt.numeroCompte}">
            </div>
            <div class="col ">
            </div>
        </div>

        <div class="row">
            <!--Occupe 4 colonnes-->
            <div class="col">
                <label for="montant"><h3>Solde :</h3></label>
            </div>
            <!--Occupe 8 colonnes-->
            <div class="col ">
                <input type="text" class="form-control" id="montant" placeholder="${compt.montant}">
            </div>
            <div class="col ">
            </div>
            <div class="col ">
            </div>
        </div>




        <br>

        <table class="table" width=80%>
            <thead class="thead table-info">
                <tr>
                    <th>Numéro de compte</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Type d'opération</th>
                    <th>Montant</th>
                </tr>
            </thead>
            <c:forEach var="compt" items="${list}">
                <tbody>
                    <tr>
                        <td>${compt.numeroCompte}</td>
                        <td>${compt.nom}</td>
                        <td>${compt.prenom}</td>
                        <td>${compt.typeCompte}</td>
                        <td>${compt.montant}</td>
                    </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
    <!--Fin du container-->

</body>

</html>