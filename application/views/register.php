<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>

    <!-- Add Bootstrap 5 CSS via CDN -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3>Register</h3>
                    </div>
                    <div class="card-body">
                        <!-- Register Form -->
                        <form action="<?= base_url('api/auth/register')?>" method="POST">
                                    <div class="form-group mb-3">
                                        <label class="form-label" for="nik"> NIK </label>
                                        <input class="form-control" type="text" id="nik" value="<?= $_SESSION['old']['nik']??'' ?>" name="nik" />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label" for="name"> Name </label>
                                        <input class="form-control" type="text" id="name" value="<?= $_SESSION['old']['name']??'' ?>" name="name" />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label" for="password"> Password </label>
                                        <input class="form-control" type="password" id="password" name="pass[]" />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="form-label" for="cpassword"> Confirm Password </label>
                                        <input class="form-control" type="password" id="cpassword" name="pass[]" />
                                    </div>
                                    <div
                                    class="d-flex justify-content-between align-items-center mt-4 mb-3"
                                    >
                            <div>
                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                        </form>
                    
                </div>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap 5 JavaScript (popper.js and bootstrap.js) via CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>