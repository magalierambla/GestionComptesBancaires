<%-- 
    Document   : homepage
    Created on : 9 avr. 2021, 19:45:41
    Author     : rambl
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <link rel="stylesheet"
              href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
              integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
              crossorigin="anonymous">
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
            rel="stylesheet">
        <!-- Bulma Version 0.9.0-->
        <link rel="stylesheet"
              href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
        <link rel="stylesheet" type="text/css" href="css/index.css" />

        <script async type="text/javascript" src="js/bulma.js"></script>

        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <title>GestiBank</title>
    </head>
    <body>
        <!-- Navigation bar -->
        <nav class="navbar is-danger is-fixed-top">
            <div class="navbar-brand">
                <div class="navbar-burger burger"
                     data-target="navbarExampleTransparentExample">
                    <span></span> <span></span> <span></span>
                </div>
            </div>

            <div id="navbarExampleTransparentExample" class="navbar-menu">
                <div class="navbar-end">
                    <a class="navbar-item" href="#about"> <span class="icon">
                            <i class="fas fa-info"></i>
                        </span> <span>GestiBANK</span>
                    </a> <a class="navbar-item" href="#services"> <span class="icon">
                            <i class="fas fa-bars"></i>
                        </span> <span>Nos services</span>
                    </a> <a class="navbar-item" href="#contact"> <span class="icon">
                            <i class="fas fa-envelope"></i>
                        </span> <span>Contact</span>
                    </a> <a class="navbar-item">
                        <div class="select is-primary">
                            <select>
                                <option>Langues</option>
                                <option>Anglais</option>
                                <option>Français</option>
                                <option>Arabe</option>
                            </select>
                        </div>
                    </a>
                </div>
            </div>
        </nav>

        <!-- Header -->

        <!-- About -->
        <section class="section" id="about">
            <!-- Title -->
            <div class="section-heading">
                <h3 class="title is-2 is-spaced is-centered has-text-centered"></h3>
                <h1 class="title is-2 is-spaced is-centered has-text-centered">GESTIBANK</h1>
                <h4 class="subtitle is-5 is-centered has-text-centered">Proche
                    de vous, Proche de votre Poche</h4>
                <div class="container">
                    <p>Notre service client est disponible par téléphone du lundi au
                        vendredi de 8h30 à 19h et le samedi de 9h00 à 18h00, sur Facebook
                        et Twitter, pour répondre à toutes vos questions. Disponible
                        jusqu’à la fin du parcours de souscription, vous permet d’être
                        accompagné(e) par un conseiller à toutes les étapes clefs. Vous
                        avez de réels conseillers en ligne, disponibles et à votre écoute,
                        alors profitez-en !</p>
                </div>
            </div>

            <div class="columns has-same-height is-gapless"></div>
            <div class="columns has-same-height is-gapless"></div>
            <div class="columns has-same-height is-gapless"></div>
            <div class="columns has-same-height is-gapless">

                <div class="column">
                    <!-- Profile -->
                    <div class="card bg-info text-white">
                        <div class="card-header-title">
                            <h3 class="title is-4">Outil de Conversion</h3>
                        </div>
                        <div class="card-body">
                            <form action="Accueil.jsp" method="POST">
                                <label>Devise de depart</label> <select class="input is-rounded"
                                                                        id="monnaiedep">
                                    <option>Euro</option>
                                    <option>Dollar US</option>
                                    <option>YEN</option>
                                    <option>Livre Sterling</option>
                                    <option>Bitcoins</option>
                                    <option>Riyal Saoudien</option>
                                    <option>Franc Comorien</option>
                                    <option>Dollar Canadien</option>
                                    <option>Dollar barbadien</option>
                                </select><br>
                                <br> <label>Montant</label> <input id="montant"
                                                                   class="input is-rounded" type="number" placeholder="montant"><br>
                                <br> <label>Devise d'arrivée</label> <select
                                    class="input is-rounded" id="monnaiedarr">
                                    <option>Euro</option>
                                    <option>Dollar US</option>
                                    <option>YEN</option>
                                    <option>Livre Sterling</option>
                                    <option>Bitcoins</option>
                                    <option>Riyal Saoudien</option>
                                    <option>Franc Comorien</option>
                                    <option>Dollar Canadien</option>
                                    <option>Dollar barbadien</option>
                                </select> <br>
                                <br>

                                <button class="button is-primary is-rounded button is-normal">Calculer</button>
                            </form>





                        </div>
                        <div class="card-footer">
                            <span>Resultat :</span>
                        </div>
                    </div>
                </div>


                <div class="column">
                    <!-- Profile picture -->
                    <div class="card">
                        <!-- <div class="card-header-title">LOGO</div> -->
                        <br>
                        <div class="card-image">
                            <figure class="image is-4by3">
                                <img alt="" src="">
                                <img src="resources/img/cb.jpg" alt="Placeholder image" />
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <!-- Skills -->
                    <div class="card bg-info text-white">
                        <div class="card-header-title ">
                            <h3 class="title is-4">Connexion</h3>
                        </div>
                        <br>
                        <div class="card-body">

                            <div class="hero-body has-text-centered">
                                <div class="login">
                                    <form:form modelAttribute="util" name="connexion" method="POST" action="connexion">
                                        <div class="field">
                                            <div class="control">
                                                <form:input path="pseudo" name="login" class="input is-medium is-rounded"
                                                       placeholder="login" autocomplete="username"/>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="control">
                                                <form:password path="mdp" name="password" class="input is-medium is-rounded"
                                                       placeholder="**********"
                                                       autocomplete="current-password"  />
                                            </div>
                                        </div>
                                        <br />
                                        <button
                                            class="button is-block is-fullwidth is-primary is-medium is-rounded"
                                            type="submit">Login</button>
                                    </form:form>
                                    <br>
                                    <nav class="level">
                                        <div class="level-item has-text-centered">
                                            <div>
                                                <a href="#"></a>
                                            </div>
                                        </div>
                                        Vous êtes nouveau?
                                        <div class="level-item has-text-centered">
                                            <div>
                                                <a href="<c:url value="/inscription"></c:url>">Inscrivez-vous!</a>
                                            </div>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services -->

        <!--
        <section class="section" id="services">
                <div class="section-heading">
                        <h3 class="title is-2">Consulter la bourse</h3>
                        <h4 class="subtitle is-5"></h4>
                </div>
                <div class="container">
                        <div class="columns">
                                <div class="column">
                                        <div class="box">
                                                <div class="content">
                                                        <h4 class="title is-5">Euro----Dollar</h4>
                                                        Develop--içi---------------------------------------------------------
                                                </div>
                                        </div>
                                </div>
                                <div class="column">
                                        <div class="box">
                                                <div class="content">
                                                        <h4 class="title is-5">Euro----Dollar</h4>
                                                        Develop--içi---------------------------------------------------------
                                                </div>
                                        </div>
                                </div>
                        </div>

                        <div class="columns">
                                <div class="column">
                                        <div class="box">
                                                <div class="content">
                                                        <h4 class="title is-5">Euro----Dollar</h4>
                                                        Develop--içi---------------------------------------------------------
                                                </div>
                                        </div>
                                </div>
                                <div class="column">
                                        <div class="box">
                                                <div class="content">
                                                        <h4 class="title is-5">Euro----Dollar</h4>
                                                        Develop--içi---------------------------------------------------------
                                                </div>
                                        </div>
                                </div>
                        </div>

                </div>
        </section>
        -->
        <!-- Contact -->

        <!-- 
        <section class="section" id="contact">
                <div class="container">
                        <div class="section-heading">
                                <h3 class="title is-2">Contact</h3>
                                <h4 class="subtitle is-5"></h4>
                        </div>
                        <br>

                        <div class="columns">
                                <div class="column is-6 is-offset-3">
                                        <div class="box">
                                                <div class="field">
                                                        <label class="label">Nome</label>
                                                        <div class="control">
                                                                <input class="input" type="text" placeholder="Text input">
                                                        </div>
                                                </div>

                                                <div class="field">
                                                        <label class="label">Email</label>
                                                        <div class="control has-icons-left">
                                                                <input class="input" type="email" placeholder="Email input"
                                                                        value=""> <span class="icon is-small is-left"> <i
                                                                        class="fas fa-envelope"></i>
                                                                </span>
                                                        </div>
                                                </div>

                                                <div class="field">
                                                        <label class="label">Votre message</label>
                                                        <div class="control">
                                                                <textarea class="textarea" placeholder="Textarea"></textarea>
                                                        </div>
                                                </div>

                                                <div class="field is-grouped has-text-centered">
                                                        <div class="control">
                                                                <button class="button is-primary is-medium is-rounded">
                                                                        <span class="icon"> <i class="fas fa-envelope"></i>
                                                                        </span> <span>Envoyer votre message</span>
                                                                </button>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>

                </div>
        </section>
        <br>
        -->

        <!-- Footer -->
        <footer class="footer">
            <div class="section-heading">
                <p style="text-align: center;">
                    <strong>GestiBank</strong>
            </div>
        </footer>


    </body>
</html>
