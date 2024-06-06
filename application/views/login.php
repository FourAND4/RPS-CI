<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <!-- Add Bootstrap 5 CSS via CDN -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3>Login</h3>
                    </div>
                    <div class="card-body">
                        <!-- Login Form -->
                        <form action="<?= base_url('api/auth/login')?>" method="POST">
                                          <div class="form-group mb-3">
                          <label class="form-label" for="nik"> NIK </label>
                              <input class="form-control" type="text" id="nik" value="<?= $_SESSION['old']['nik'] ??'' ?>" name="nik" />
                            </div>
                            <div class="form-group mb-3">
                              <label class="form-label" for="password"> Password </label>
                              <input
                                class="form-control"
                                type="password"
                                id="password"
                                name="pass"
                          />
                        </div>
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </form>
                    </div>
                    <div class="card-footer">
                        <p>Don't have an account? <a href="<?= base_url('auth/register') ?>">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap 5 JavaScript (popper.js and bootstrap.js) via CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>