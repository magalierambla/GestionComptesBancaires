<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="fr-Fr">

    <head>
        <meta charset="UTF-8" />
        <!-- Encodages des caractres universel -->
        <title>Demande d'ouverture de compte depuis l'Espace Public</title>
        <!--Bulma-->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css" />
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bulma-calendar@6.0.9/dist/js/bulma-calendar.min.js" />
        <!-- Icnes font-awesome -->
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <!-- Polices google -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
            rel="stylesheet" />
    </head>

    <body>
        <!-- Contenu html de la page -->
        <!-- Layout/Disposition - Conception de la structure de notre page Web avec ces classes CSS de Bulma -->
        <section class="hero is-info is-fullheight">
            <!-- section -->
            <!-- .hero -->
            <!-- .is-info -->
            <!--  .is-fullheight -->
            <div class="hero-body">
                <div class="container">
                    <div class="columns is-centered">
                        <!-- is-centered pour centrer le contenu sur le parent-->
                        <div class="column is-9-tablet is-6-desktop is-9-widescreen">
                            <!-- is-5-tablet is-4-desktop is-3-widescreen pour la fonction de rsolution de l'cran -->
                            <div>
                                                <h1 style="font-size: xx-large;">
                                                    ${ message }
                                                </h1>
                                            </div>
                            <form:form modelAttribute="util" method="post" class="box">
                                <h1 class="title">Demande de création de compte</h1>
                                <div class="column is-centered">
                                    <div class="field has-text-centered">
                                        <div class="columns">
                                            <!-- <figure class="image is-128x128">
                                                    <img src="../../resources/img/logo-me.PNG" alt="Logo">
                                            </figure> -->                                            
                                            <div class="column">
                                                <h1 style="font-size: xx-large;">Demande de création de
                                                    compte</h1>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="columns">

                                    <div class="column">
                                        <!-- First column -->

                                        <div class="column field has-e=text-left">
                                            <!-- <div class="field has-text-centered">
<img src="./img/logo-me.png" alt="Logo" />
</div> -->
                                            <!-- Champ "Nom" -->
                                            <div class="field has-text-left">
                                                <label for="nom" class="label">Nom</label>
                                                <div class="control has-icons-left">
                                                    <!-- Wrapper .control pour pouvoir mettre des icnes dans l'input, has-icons-left pour ajouter une icne  gauche -->
                                                    <form:input path="nom"  placeholder="Inscrivez votre nom" class="input"></form:input>
                                                        <span class="icon is-small is-left"> <i
                                                                class="fa fa-id-card"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <!-- Champ "Prenom" -->
                                                <div class="field">
                                                    <label for="prenom" class="label">Prénom</label>
                                                    <div class="control has-icons-left">
                                                        <!-- Wrapper .control pour pouvoir mettre des icnes dans l'input, has-icons-left pour ajouter une icne  gauche -->
                                                    <form:input path="prenom" placeholder="Inscrivez votre prenom" class="input"></form:input>
                                                        <span class="icon is-small is-left"> <i
                                                                class="fa fa-id-card"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <!-- Champ PSEUDO-->
                                                <div class="field">
                                                    <label for="pseudo" class="label">Pseudo</label>
                                                    <div class="control has-icons-left">
                                                        <!-- Wrapper .control pour pouvoir mettre des icnes dans l'input, has-icons-left pour ajouter une icne  gauche -->
                                                    <form:input path="pseudo" type="text" placeholder="votre-pseudo" class="input"></form:input>
                                                    <span class="icon is-small is-left"> <i
                                                                class="fa fa-id-card"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <!-- Champ EMAIL-->
                                                <div class="field">
                                                    <label for="mail" class="label">Email</label>
                                                    <div class="control has-icons-left">
                                                        <!-- Wrapper .control pour pouvoir mettre des icnes dans l'input, has-icons-left pour ajouter une icne  gauche -->
                                                    <form:input path="mail" type="email" placeholder="votreadress@gmail.com" class="input"></form:input>
                                                        <span class="icon is-small is-left"> <i
                                                                class="fa fa-envelope"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <!-- Champ MDP-->
                                                <div class="field">
                                                    <label for="mdp" class="label">Mot-de-passe</label>
                                                    <div class="control has-icons-left">
                                                        <!-- Wrapper .control pour pouvoir mettre des icnes dans l'input, has-icons-left pour ajouter une icne  gauche -->
                                                    <form:password path="mdp" placeholder="votre-pseudo" class="input"></form:password>
                                                        <span class="icon is-small is-left"> <i
                                                                class="fa fa-id-card"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="column is-centered">
                                                    <!-- Bouton "Soumettre ma demande" -->
                                                    <div class="field">
                                                        <input type="submit" class="button is-link is-rounded">
                                                    </div>
                                                </div>

                                            </div>


                                            <!-- <div class="columns">
                                                    <div class="column">
    
    
    
    
                                                            <div class="column"></div>
    
    
    
                                                    </div>
    
    
                                            </div> -->
                                            <!--Fin colonne 1-->


                                        </div>
                                        <!-- Second column -->
                                        <!--<div class="column">
    
                                                 <div class="columns">
                <div class="column">
                    <div class="field">
                        <label for="password" class="label">Nombre d'enfants :</label>
                    </div>
                </div>
                <div class="column">
    
                    <div class="control">
                        <div class="select is-info is-rounded">
                            <select>
                    <option>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    </select>
                        </div>
                    </div>
                </div>
            </div> -->


                                        <!-- <h1>Justificatifs :</h1> -->

                                        <!-- Champ Upload Carte d'identit -->
                                        <!-- <div class="field">
                <label for="password" class="label">Carte d'identité</label>
                <div class="control">
                    <div class="file is-info has-name">
                        <label class="file-label">
                  <input class="file-input" type="file" name="resume">
                  <span class="file-cta">
                    <span class="file-icon">
                      <i class="fa fa-upload"></i>
                    </span>
                    <span class="file-label">
                      Uploader un fichier
                    </span>
                  </span>
                  <span class="file-name">
                    Screen Shot 2017-07-29 at 15.54.25.png
                  </span>
                </label>
                    </div>
                </div>
            </div>
                                        -->
                                        <!-- Champ Upload "Justificatif de salaire" -->
                                        <!-- <div class="field">
                <label for="password" class="label">Justificatif de salaire</label>
                <div class="control">
                    <div class="file is-info has-name">
                        <label class="file-label">
                  <input class="file-input" type="file" name="resume">
                  <span class="file-cta">
                    <span class="file-icon">
                      <i class="fa fa-upload"></i>
                    </span>
                    <span class="file-label">
                      Uploader un fichier
                    </span>
                  </span>
                  <span class="file-name">
                    Screen Shot 2017-07-29 at 15.54.25.png
                  </span>
                </label>
                    </div>
                </div>
            </div>
                                        -->
                                        <!-- Champ Upload "Justificatif de domicile" -->
                                        <!-- <div class="field">
                <label for="password" class="label">Justificatif de domicile</label>
                <div class="control">
                    <div class="file is-info has-name">
                        <label class="file-label">
                  <input class="file-input" type="file" name="resume">
                  <span class="file-cta">
                    <span class="file-icon">
                      <i class="fa fa-upload"></i>
                    </span>
                    <span class="file-label">
                      Uploader un fichier
                    </span>
                  </span>
                  <span class="file-name">
                    Screen Shot 2017-07-29 at 15.54.25.png
                  </span>
                </label>
                    </div>
                </div>
            </div>
                                        -->
                                </form:form>
                            </div>
                        </div>
                        </section>
                        </body>

                        </html>