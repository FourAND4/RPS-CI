<?php include_once "./application/views/components/decoration-topbar.php" ?>

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<main class="container mt-4">
  <section id="profile-card" class="card">
      <div class="card-se">
        <p class="mb-2 h1">Welcome</p>
        <h4><strong><?= $_SESSION['user']['name'] ?></strong></h4>
        <h4 class="mb-2">NIK: <?= $_SESSION['user']['nik'] ?></h4>
      </div>
  </section>
  <section id="dashboard-menu" class="row align-items-center mb-4 mt-5">
    <div class="col-10">
      <input
        type="search"
        class="form-control text-center"
        placeholder="Cari Mata Kuliah Anda"
        value=""
        id="form-search"/>
    </div>
    <div class="col-2">
      <button
        class="btn btn-outline-success float-end"
        data-bs-toggle="modal"
        data-bs-target="#modal-tambah-rps">
        Add RPS
      </button>
    </div>
  </section>

  <hr />

  <section id="list-of-matkul" class="row row-gap-4 mt-4"></section>

</main>
<?php include_once "./application/views/components/modals/tambah_rps.php" ?>
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
  crossorigin="anonymous"
></script>
<script
  src="https://code.jquery.com/jquery-3.7.0.min.js"
  integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
  crossorigin="anonymous"
></script>
<script src="./assets/js/jquery-render.js"></script>
<script src="./assets/js/dashboard.js"></script>
<script src="./assets/js/dropdown.js"></script>