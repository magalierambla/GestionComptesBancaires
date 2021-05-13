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
            <c:import url="_MENU.jsp"></c:import>

            <div class="jumbotron">
                <!-- <section class="page-section"> -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <br>
                            <h2>Espace Client</h2>
                            <p>Bienvenue sur votre espace personnel.</p>
                            <h3>${message}</h3>
                            <div>
                                <a href="<c:url value="/client/demande-chequier"></c:url>">
                                    <button type="button" class="btn btn-info">Demande de chéquier</button>
                                </a>
                            </div>
                            <table class="table">
                                <thead class="thead table-info">
                                    <tr>
                                        <th>Nom</th>
                                        <th>Prénom</th>
                                        <th>Type de compte</th>
                                        <th>Numéro de compte</th>
                                        <th>Solde</th>
                                        <th>Opérations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${comptes}" var="compte">
                                    <tr>
                                        <td>${compte.client.nom}</td>
                                        <td>${compte.client.prenom}</td>
                                        <td>TODO</td>
                                        <td>${compte.iban}</td>
                                        <td>${compte.solde}</td>
                                        <td>
                                            <div class="row">
                                                <div class="col">
                                                    <button type="button" class="btn btn-info">Opération</button>
                                                </div>
                                                <div class="col">
                                                    <button type="button" class="btn btn-info">Historique</button>
                                                </div>                                                
                                            </div>                                            
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>


                        </div>
                        <!-- </section> -->
                        <!-- </div> -->
                    </div>



                </div>
            </div>
        </body>

    </html>