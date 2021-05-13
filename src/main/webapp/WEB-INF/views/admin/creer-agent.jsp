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
  <link rel="stylesheet" type="text/css" href="css/index.css"/>
 
  
  <script async type="text/javascript" src="js/bulma.js"></script>
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>GestiBank</title>
</head>
<body>     
       <!-- START NAV -->
    <nav class="navbar is-white">
        <div class="container">
            <div class="navbar-brand">
                <a class="navbar-item brand-text" href="../">
          Bank Admin:  Création l'espace agent
        </a>
                <div class="navbar-burger burger" data-target="navMenu">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
            <div id="navMenu" class="navbar-menu">
                <div class="navbar-start">
                    <a class="navbar-item" href="admin.html">
            Se déconnecter >
          </a>
                </div>

            </div>
        </div>
    </nav>
    <!-- END NAV -->
    <div class="container">
        <div class="columns">
            <div class="column is-12">
                <nav class="breadcrumb" aria-label="breadcrumbs">
                    <ul>
                        <li><a href="../">View</a></li>
                        <li class="is-active"><a href="#" >Admin</a></li>
                        <li class="is-active"><a href="#" aria-current="page">Création l'espace agent</a></li>
                    </ul>
                </nav>
                <section class="hero is-primary welcome is-small">
                    <div class="hero-body">
                        <div class="container">
                            <h2 class="subtitle">
                               Création d'un agent!
                            </h2>
                        </div>
                    </div>
                </section>
                <div class="columns">
                    <div class="column is-12">
                        <div class="card events-card">
                            <div class="card-table">
                                 <form  name="controllerPrincipal" method="POST" action="controllerPrincipal"> 
                                    <div class="content">
                                        <label class="label">Matricule</label>
                                        <div class="control">
                                            <input class="input" type="text" placeholder="">
                                        </div>
                                    </div>
                                    <div class="content">
                                        <label class="label">Nome</label>
                                        <div class="control">
                                            <input class="input" type="text" placeholder="">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Prénom</label>
                                        <div class="control has-icons-left has-icons-right">
                                            <input class="input " type="text" placeholder="" value="">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Email</label>
                                        <div class="control has-icons-left has-icons-right">
                                            <input class="input " type="email" placeholder=" " value="">
                                        </div>

                                    </div>
                                    <div class="field">
                                        <label class="label">Téléphone</label>
                                        <div class="control has-icons-left has-icons-right">
                                            <input class="input" type="email" placeholder="" value="">
                                        </div>
                                    </div>
                                    <div class="field is-grouped">
                                        <div class="control">
                                            <button class="button is-success">Valider</button>
                                        </div>
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