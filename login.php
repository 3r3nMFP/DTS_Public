<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SDONV | Account</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/x-icon" href="./assets/favicon.ico" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="dashboard/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="dashboard/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dashboard/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="dashboard/plugins/dataflex/jquery.flexdatalist.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- Select2 CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />

  <!-- jQuery and Select2 JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

</head>
  <body class="login-page bg-body-secondary">
        <!-- Login Section -->
        <div class="col-md-4">
          <div class="card card-outline card-primary">
            <div class="card-header">
              <h1 class="mb-0 text-center"><b>Login</b>DTS</h1>
            </div>
            <div class="card-body login-card-body">
              <p class="login-box-msg">Sign in to start your session</p>
              <form action="actions/login.php" method="post">
                <div class="input-group mb-3">
                  <input type="email" class="form-control" placeholder="Email" name="email" value="<?php echo isset($_GET['try']) ? escape_string($_GET['try']) : ""; ?>" required autofocus>
                  <div class="input-group-append">
                    <div class="input-group-text">
                      <span class="fas fa-envelope"></span>
                    </div>
                  </div>
                </div>
                <div class="input-group mb-3">
                  <input type="password" class="form-control" placeholder="Password" name="password" required>
                  <div class="input-group-append">
                    <div class="input-group-text">
                      <span class="fas fa-lock"></span>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <!-- /.col -->
                  <div class="col-12 mb-2">
                    <button type="submit" class="btn btn-primary btn-block" name="login">Sign In</button>
                  </div>
                  <!-- /.col -->
                </div>
              </form>
              <!-- <p class="mt-3 mb-1">
                <a href="forgot-password.html">I forgot my password</a>
              </p>
              <p class="mb-0">
                <a href="register.html" class="text-center">Register a new membership</a>
              </p> -->
            </div>
          </div>
        </div>

    <!-- Bootstrap 5 JS -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    ></script>
  </body>
</html>
