<?php

include "config/koneksi.php";

if(isset($_POST['register'])){

    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Cek password
    if($password != $confirm_password){

        echo "<script>
                alert('Konfirmasi password tidak sesuai!');
              </script>";

    }else{

        // Cek email
        $cek = mysqli_query(
            $conn,
            "SELECT * FROM users WHERE email='$email'"
        );

        if(mysqli_num_rows($cek) > 0){

            echo "<script>
                    alert('Email sudah terdaftar!');
                  </script>";

        }else{

            $passwordHash = password_hash(
                $password,
                PASSWORD_DEFAULT
            );

            $simpan = mysqli_query(
                $conn,
                "INSERT INTO users(nama,email,password)
                VALUES('$nama','$email','$passwordHash')"
            );

            if($simpan){

                echo "<script>
                        alert('Registrasi berhasil!');
                        window.location='Login.php';
                      </script>";

            }else{

                echo "<script>
                        alert('Registrasi gagal!');
                      </script>";
            }
        }
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - RecreateKodingNext</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<div class="login-container">

    <div class="card login-card shadow-lg">

        <div class="text-center mb-4">
            <h2 class="fw-bold">RecreateKodingNext</h2>
            <p class="text-muted">Buat akun baru</p>
        </div>

        <form method="POST">

            <div class="mb-3">
                <label class="form-label">Nama Lengkap</label>

                <div class="input-group">
                    <span class="input-group-text">
                        <i class="bi bi-person-fill"></i>
                    </span>

                    <input
                        type="text"
                        name="nama"
                        class="form-control"
                        placeholder="Masukkan Nama Lengkap"
                        required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>

                <div class="input-group">
                    <span class="input-group-text">
                        <i class="bi bi-envelope-fill"></i>
                    </span>

                    <input
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Masukkan Email"
                        required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Password</label>

                <div class="input-group">
                    <span class="input-group-text">
                        <i class="bi bi-lock-fill"></i>
                    </span>

                    <input
                        type="password"
                        name="password"
                        class="form-control"
                        placeholder="Masukkan Password"
                        required>
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label">Konfirmasi Password</label>

                <div class="input-group">
                    <span class="input-group-text">
                        <i class="bi bi-shield-lock-fill"></i>
                    </span>

                    <input
                        type="password"
                        name="confirm_password"
                        class="form-control"
                        placeholder="Ulangi Password"
                        required>
                </div>
            </div>

            <button
                type="submit"
                name="register"
                class="btn btn-login w-100">
                Daftar
            </button>

        </form>

        <div class="text-center mt-4">
            Sudah punya akun?
            <a href="Login.php" class="text-decoration-none fw-bold">
                Login
            </a>
        </div>

    </div>

</div>

</body>
</html>