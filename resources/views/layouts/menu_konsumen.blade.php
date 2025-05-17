<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column text-sm" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
            <a href="/konsumen/home" class="nav-link {{Request::is('konsumen/home') ? 'active' : ''}}">
                <i class="nav-icon fas fa-home"></i>
                <p>
                    Beranda
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/konsumen/pemesanan" class="nav-link {{Request::is('konsumen/pemesanan') ? 'active' : ''}}">
                <i class="nav-icon fa fa-shopping-cart"></i>
                <p>
                    Pemesanan Saya
                </p>
            </a>
        </li>

        <li class="nav-item">
            <a href="/konsumen/gantipass" class="nav-link {{Request::is('konsumen/gantipass') ? 'active' : ''}}">
                <i class="nav-icon fas fa-key"></i>
                <p>
                    Ganti Password
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/logout" class="nav-link">
                <i class="nav-icon fas fa-sign-out-alt"></i>
                <p>
                    Logout
                </p>
            </a>
        </li>
    </ul>
</nav>