<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet">
<style>
  .navbar {
    margin-bottom:0;
  }
  .bg-companyblue {
  	background-color: rgb(0, 48, 60);
    color: white
  }
  .nav-item{
  	color: white;
  }
  .jumbotron {
    margin-bottom:0;
    background-color: white;
  }
  .navbar {
    background-color: #004556;
  }
  .navbar .navbar-brand {
    color: #8499a0;
  }
  .navbar .navbar-brand:hover,
  .navbar .navbar-brand:focus {
    color: #e53d15;
  }
  .navbar .navbar-text {
    color: #8499a0;
  }
  .navbar .navbar-text a {
    color: #e53d15;
  }
  .navbar .navbar-text a:hover,
  .navbar .navbar-text a:focus {
    color: #e53d15; 
  }
  .navbar .navbar-nav .nav-link {
    color: #8499a0;
    border-radius: .25rem;
    margin: 0 0.25em;
  }
  .navbar .navbar-nav .nav-link:not(.disabled):hover,
  .navbar .navbar-nav .nav-link:not(.disabled):focus {
    color: #e53d15;
  }
  .navbar .navbar-nav .dropdown-menu {
    background-color: #004556;
    border-color: #062026;
  }
  .navbar .navbar-nav .dropdown-menu .dropdown-item {
    color: #8499a0;
  }
  .navbar .navbar-nav .dropdown-menu .dropdown-item:hover,
  .navbar .navbar-nav .dropdown-menu .dropdown-item:focus,
  .navbar .navbar-nav .dropdown-menu .dropdown-item.active {
    color: #e53d15;
    background-color: #062026;
  }
  .navbar .navbar-nav .dropdown-menu .dropdown-divider {
    border-top-color: #062026;
  }
  .navbar .navbar-nav .nav-item.active .nav-link,
  .navbar .navbar-nav .nav-item.active .nav-link:hover,
  .navbar .navbar-nav .nav-item.active .nav-link:focus,
  .navbar .navbar-nav .nav-item.show .nav-link,
  .navbar .navbar-nav .nav-item.show .nav-link:hover,
  .navbar .navbar-nav .nav-item.show .nav-link:focus {
    color: #e53d15;
    background-color: #062026;
  }
  .navbar .navbar-toggle {
    border-color: #062026;
  }
  .navbar .navbar-toggle:hover,
  .navbar .navbar-toggle:focus {
    background-color: #062026;
  }
  .navbar .navbar-toggle .navbar-toggler-icon {
    color: #8499a0;
  }
  .navbar .navbar-collapse,
  .navbar .navbar-form {
    border-color: #8499a0;
  }
  .navbar .navbar-link {
    color: #8499a0;
  }
  .navbar .navbar-link:hover {
    color: #e53d15;
  }

  @media (max-width: 575px) {
    .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item {
      color: #8499a0;
    }
    .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:hover,
    .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:focus {
      color: #e53d15;
    }
    .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item.active {
      color: #e53d15;
      background-color: #062026;
    }
  }

  @media (max-width: 767px) {
    .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item {
      color: #8499a0;
    }
    .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:hover,
    .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:focus {
      color: #e53d15;
    }
    .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item.active {
      color: #e53d15;
      background-color: #062026;
    }
  }

  @media (max-width: 991px) {
    .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item {
      color: #8499a0;
    }
    .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:hover,
    .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:focus {
      color: #e53d15;
    }
    .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item.active {
      color: #e53d15;
      background-color: #062026;
    }
  }

  @media (max-width: 1199px) {
    .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item {
      color: #8499a0;
    }
    .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:hover,
    .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:focus {
      color: #e53d15;
    }
    .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item.active {
      color: #e53d15;
      background-color: #062026;
    }
  }

  .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #8499a0;
  }
  .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #e53d15;
  }
  .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #e53d15;
    background-color: #062026;
  }
  .text-center{
    color: white;
    background-color: #e53d15;
    text-shadow: 2px 2px 0px rgba(0,0,0,0.3);
    font-weight: bold;
  }
</style>