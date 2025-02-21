<!doctype html>
<html lang="en">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AdminLTE 4 | Login Page v2</title>
    <!--begin::Primary Meta Tags-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="title" content="AdminLTE 4 | Login Page v2" />
    <meta name="author" content="ColorlibHQ" />
    <meta
      name="description"
      content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS."
    />
    <meta
      name="keywords"
      content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, colorlibhq, colorlibhq dashboard, colorlibhq admin dashboard"
    />
    <!--end::Primary Meta Tags-->
    <!--begin::Fonts-->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
      integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q="
      crossorigin="anonymous"
    />
    <!--end::Fonts-->
    <!--begin::Third Party Plugin(OverlayScrollbars)-->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/styles/overlayscrollbars.min.css"
      integrity="sha256-tZHrRjVqNSRyWg2wbppGnT833E/Ys0DHWGwT04GiqQg="
      crossorigin="anonymous"
    />
    <!--end::Third Party Plugin(OverlayScrollbars)-->
    <!--begin::Third Party Plugin(Bootstrap Icons)-->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
      integrity="sha256-9kPW/n5nn53j4WMRYAxe9c1rCY96Oogo/MKSVdKzPmI="
      crossorigin="anonymous"
    />
    <!--end::Third Party Plugin(Bootstrap Icons)-->
    <!--begin::Required Plugin(AdminLTE)-->
    <link rel="stylesheet" href="../../../dist/css/adminlte.css" />
    <!--end::Required Plugin(AdminLTE)-->

    <!-- Bootstrap 5 CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Custom Styles -->
    <style>
      .login-page {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
      }

      @media (min-width: 768px) {
        .login-page .row {
          flex-direction: row;
        }
      }

      @media (max-width: 767px) {
        .login-page .row {
          flex-direction: column-reverse;
        }
      }
    </style>
  </head>
  <body class="login-page bg-body-secondary">
    <div class="container">
      <div class="row d-flex align-items-center justify-content-center">
        <!-- Form Section -->
        <div class="col-md-8">
          <div class="card card-primary card-outline">
          <div class="card-header"><div class="card-title">Submit Document ( For Guest (LGU, Stakeholders,etc.))</div></div>
            <!--end::Header-->
            <!--begin::Form-->
            <form>
              <!--begin::Body-->
              <div class="card-body">
                <div class="mb-3">
                  <label for="guestFrom" class="form-label">From</label>
                  <input
                    type="text"
                    class="form-control"
                    id="guestFrom"
                    aria-describedby="textHelp"
                  />
                  <div id="textHelp" class="form-text">
                    Full Name
                  </div>
                </div>
                <div class="mb-3">
                  <label for="guestOffice" class="form-label">Office/School</label>
                  <input type="text" class="form-control" id="guestOffice" />
                </div>
                <div class="mb-3">
                  <label for="guestDocType" class="form-label">Document Type</label>
                  <select class="form-select" id="guestDocType" required>
                    <option selected disabled value="">Choose...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                  </select>
                  <div class="invalid-feedback">Please select a valid Document Type.</div>
                </div>
                <div class="mb-3">
                  <label for="guestSM" class="form-label">Subject Matter/Details</label>
                  <textarea class="form-control" id="guestSM" aria-label="With textarea"></textarea>
                  <div id="textHelp" class="form-text">
                    Description, Date, Destination
                  </div>
                </div>
                <div class="mb-3">
                  <label for="guestPM" class="form-label">Purpose of Document Route/Submission</label>
                  <textarea class="form-control" id="guestPM" aria-label="With textarea"></textarea>
                  <div id="textHelp" class="form-text">
                    Purposes or Actions to be taken ...
                  </div>
                </div>
                <div class="mb-3">
                  <label for="guestRecUnits" class="form-label">RECEIVING UNITS</label>
                  <select class="form-select" id="guestRecUnits" required>
                    <option selected disabled value="">Choose...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                  </select>
                  <div class="invalid-feedback">Please select a valid Document Type.</div>
                </div>
                <div class="mb-3">
                  <label for="guestPersonel" class="form-label">Personel</label>
                  <select class="form-select" id="guestPersonel" required>
                    <option selected disabled value="">Choose...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                    <option>...</option>
                  </select>
                  <div class="invalid-feedback">Please select a valid Document Type.</div>
                </div>
              </div>
              <!--end::Body-->
              <!--begin::Footer-->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
              <!--end::Footer-->
            </form>
            <!--end::Form-->
          </div>
        </div>

        <!-- Login Section -->
        <div class="col-md-4">
          <div class="card card-outline card-primary">
            <div class="card-header">
              <h1 class="mb-0 text-center"><b>Login</b>DTS</h1>
            </div>
            <div class="card-body login-card-body">
              <p class="login-box-msg">Sign in to start your session</p>
              <form action="../index3.html" method="post">
            <div class="input-group mb-1">
              <div class="form-floating">
                <input id="loginEmail" type="email" class="form-control" value="" placeholder="" />
                <label for="loginEmail">Email</label>
              </div>
              <div class="input-group-text"><span class="bi bi-envelope"></span></div>
            </div>
            <div class="input-group mb-1">
              <div class="form-floating">
                <input id="loginPassword" type="password" class="form-control" placeholder="" />
                <label for="loginPassword">Password</label>
              </div>
              <div class="input-group-text"><span class="bi bi-lock-fill"></span></div>
            </div>
            <!--begin::Row-->
            <div class="row">
              <div class="col-8 d-inline-flex align-items-center">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                  <label class="form-check-label" for="flexCheckDefault"> Remember Me </label>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-4">
                <div class="d-grid gap-2">
                  <button type="submit" class="btn btn-primary">Sign In</button>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!--end::Row-->
          </form>
              <p class="mt-3 mb-1">
                <a href="forgot-password.html">I forgot my password</a>
              </p>
              <p class="mb-0">
                <a href="register.html" class="text-center">Register a new membership</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap 5 JS -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    ></script>
  </body>
</html>
