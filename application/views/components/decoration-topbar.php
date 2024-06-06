<header class="dashboard-topbar border-bottom d-flex bg-dark">
  <div class="container d-flex align-items-center gap-2">
    <image
      src="https://home.amikom.ac.id/media/2019/12/cropped-amikom-512-192x192.png"
      alt="logo-amikom"
      height="42"
      width="42"
    />
    <div class="logo">
      <strong class="h3">Amikom RPS</strong>
    </div>
    <div class="navbar col-3">
      <ul class="nav nav-underline">
        <li class="nav-item">
          <div class="nav-link cursor-pointer active" id="filter-draf">Draf</div>
        </li>
        <li class="nav-item">
          <div class="nav-link cursor-pointer" id="filter-aktif">Aktif</div>
        </li>
        <li class="nav-item">
          <div class="nav-link cursor-pointer" id="filter-arsip">Arsip</div>
        </li>
      </ul>

      <ul>


    </div>
    <div class="btn-group">
        <button type="button" class="btn dropdown-toggle border-0" data-bs-toggle="dropdown" aria-expanded="false">
        <img class="gambar" src="../assets/img/profile.png" alt=""> 
        </button>
        <ul class="dropdown-menu">
          <li style="margin-left: 17px;"><strong><?= $_SESSION['user']['name'] ?></strong></li>
          <hr>
          <li><a style="text-decoration: none; color: black; margin-left: 56px;" href="../auth/logout">Logout</a></li>
          <li><a style="text-decoration: none; color: black; margin-left: 66px;" class="edit" href="javascript:alert('fitur masih dalam tahap pengembangan')">Edit</a></li>
        </ul>
    </div>
  </div>
</header>
