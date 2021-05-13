<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <!-- Bulma Version 0.9.0-->
        <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <script async type="text/javascript" src="../js/bulma.js"></script>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <title>GestiBank</title>
    </head>
    <body>
        <!-- START NAV -->
        
        <c:import url="_MENU.jsp"></c:import>
        
            <!-- END NAV -->
            <div class="container">
                <div class="columns">
                    <div class="column is-3 ">
                    <c:import url="_MENU_LEFT.jsp"></c:import>
                    </div>
                    <div class="column is-9">
                        <nav class="breadcrumb" aria-label="breadcrumbs">
                            <ul>
                                <li><a href="../">View</a></li>
                                <li class="is-active"><a href="#" aria-current="page">Agent</a></li>
                            </ul>
                        </nav>
                        <section class="hero is-primary welcome is-small">
                            <div class="hero-body">
                                <div class="container">
                                    <h1 class="title">
                                        Espace Agent
                                    </h1>
                                    <h2 class="subtitle">
                                        Bonjour, j'espère que que vous avez une bonne journée!
                                    </h2>
                                </div>
                            </div>
                        </section>
                        <div class="columns">
                            <div class="column is-12">
                                <div class="card events-card">
                                    <header class="card-header">
                                        <p class="card-header-title">
                                            Affectation clients
                                        </p>
                                        <a href="#" class="card-header-icon" aria-label="more options">
                                            <span class="icon">
                                                <i class="fa fa-angle-down" aria-hidden="true"></i>
                                            </span>
                                        </a>
                                    </header>
                                    <div class="card-table">
                                        <form>
                                            <div class="content">
                                                <table class="table is-fullwidth is-striped">
                                                    <tbody>
                                                        <tr>
                                                            <th>nom</td>
                                                            <th>prénom</th>
                                                            <th>date de naissance</td>
                                                            <th>pseudo</td>   
                                                        </tr>
                                                    <c:forEach items="${clients}" var="client">
                                                        <tr>
                                                            <td>${client.nom}</td>
                                                            <td>${client.prenom}</td>
                                                            <td>
                                                                <fmt:formatDate value="${client.dateNaissance}" pattern="yyyy-MM-dd HH:mm:ss" />
                                                            </td>
                                                            <td>${client.pseudo}</td>
                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </form>
                                </div>
                                <footer class="card-footer">

                                </footer>

                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script async type="text/javascript" src="../js/agent.js"></script>


    </body>
</html>     