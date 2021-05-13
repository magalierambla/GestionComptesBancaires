<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                        <!-- Home -->
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="espace-client/accueil-client.jsp">Mes comptes
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="espace-client/virement.jsp">Virement</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="espace-client/historique-operation.jsp">Mon historique</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>

                <form class="form-inline my-2 my-md-0" data-children-count="1">
                    <input class="form-control py-2 border-right-0 border" type="search" value="Rechercher" aria-label="Search" id="example-search-input">
                    <span class="input-group-append">
                        <button class="btn btn-outline-secondary border" type="button">
                            <!-- Search -->
                            <i class="fa fa-search"></i>
                        </button>
                    </span>

                    <!-- <i class="fa fa-search"></i> -->
                </form>

                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/deconnexion"></c:url>">Déconnexion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
