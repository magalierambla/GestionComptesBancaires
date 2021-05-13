<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agent-Espace-Iulian AMARIEI 2021</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <!-- Bulma Version 0.7.x-->
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.7.5/css/bulma.min.css" />
    <link rel="stylesheet" type="text/css" href="css/admin.css">
</head>

<body>

    <!-- START NAV -->
    <nav class="navbar is-white">
        <div class="container">
            <div class="navbar-brand">
                <a class="navbar-item brand-text" href="../">
          Bank  Agent
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
            <div class="column is-1 ">
            </div>
            <div class="column is-9">
                <nav class="breadcrumb" aria-label="breadcrumbs">
                    <ul>
                        <li><a href="../">View</a></li>
                        <li class="is-active"><a href="#" aria-current="page">Agent</a></li>
                        <li class="is-active"><a href="#" aria-current="page">liste-compte</a></li>
                    </ul>
                </nav>
                <section class="hero is-primary welcome is-small">
                    <div class="hero-body">
                        <div class="container">
                            <h1 class="title">
                                Espace Agent liste-compte
                            </h1>
                            <h3>${ message }</h3>
                            <h2 class="subtitle">
                                Liste comptes
                            </h2>
                        </div>
                    </div>
                </section>
                <div class="columns">
                    <div class="column is-12">
                        <div class="card events-card">
                            <header class="card-header">

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
                                                             <th>nom</th>
                                                             <th>prénom</th>
                                                             <th>âge</th>
                                                             <th>nik</th>
                                                             <th>employée</th>
                                                             <th>

                                                             </th>
                                                             <th>

                                                             </th>
                                                        </tr>
                                                        <tr>
                                                            <td>Camile</td>
                                                            <td>Henry</td>
                                                            <td>45</td>
                                                            <td>Peld</td>
                                                            <td><label class="checkbox"><input type="checkbox"  name="empl1" value="1"></label></td>
                                                            <td>
                                                                <a class="button is-small is-link" href="#">modifier </a>
                                                            </td>
                                                            <td>
                                                                <a class="button is-small is-danger" href="#">supprimer</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Constantin</td>
                                                            <td>Brancusi</td>
                                                            <td>28</td>
                                                            <td>Peld</td>
                                                            <td><label class="checkbox"><input type="checkbox" name="empl2" value="2"></label></td>
                                                            <td>
                                                                <a class="button is-small is-link" href="#">modifier </a>
                                                            </td>
                                                            <td>
                                                                <a class="button is-small is-danger" href="#">supprimer</a>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                             <td>Eugène</td>
                                                             <td>Ionesco</td>
                                                             <td>32</td>
                                                             <td>Peld</td>
                                                            <td><label class="checkbox"><input type="checkbox" name="empl3" value="3"></label></td>
                                                            <td>
                                                                <a class="button is-small is-link" href="#">modifier </a>
                                                            </td>
                                                            <td>
                                                                <a class="button is-small is-danger" href="#">supprimer</a>
                                                            </td>
                                                        </tr>
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                </form>
                            </div>
                            <footer class="card-footer is-center">

                            </footer>

                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column is-12">
                        <div class="card events-card">
                            <header class="card-header">
                            </header>

                            <div class="card-table">
                                <form>
                                    <div class="content">
                                        <table class="table is-fullwidth is-striped">
                                            <tbody>

                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th>
                                                    <a class="button is-small is-info is-center" href="#">Création compte bancaire</a>
                                                </th>
                                                <th>

                                                </th>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>
                            <footer class="card-footer is-center">

                            </footer>

                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>

</body>

</html>

