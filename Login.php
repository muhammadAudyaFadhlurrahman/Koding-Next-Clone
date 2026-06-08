<?php

session_start();

include "config/koneksi.php";

if(isset($_POST['login'])){

    $email = $_POST['email'];
    $password = $_POST['password'];

    $query = mysqli_query(
        $conn,
        "SELECT * FROM users WHERE email='$email'"
    );

    if(mysqli_num_rows($query) > 0){

        $user = mysqli_fetch_assoc($query);

        if(password_verify($password, $user['password'])){

            $_SESSION['id'] = $user['id'];
            $_SESSION['nama'] = $user['nama'];
            $_SESSION['email'] = $user['email'];

            echo "
            <script>
                alert('Login berhasil!');
                window.location='index.php';
            </script>
            ";

        }else{

            echo "
            <script>
                alert('Password salah!');
            </script>
            ";

        }

    }else{

        echo "
        <script>
            alert('Email tidak ditemukan!');
        </script>
        ";

    }

}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - RecreateKodingNext</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>

<div class="login-container">

    <div class="card login-card shadow-lg">

        <div class="text-center mb-4">
            <h2 class="fw-bold">RecreateKodingNext</h2>
            <p class="text-muted">Masuk ke akun Anda</p>
        </div>

        <form method="POST">

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

            <div class="mb-4">
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

            <button
                type="submit"
                name="login"
                class="btn btn-login w-100">
                Login
            </button>

        </form>

        <div class="text-center mt-4">
            Belum punya akun?
            <a href="register.php" class="text-decoration-none fw-bold">
                Daftar
            </a>
        </div>

    </div>

</div>

</body>
</html>