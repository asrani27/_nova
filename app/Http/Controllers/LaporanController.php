<?php

namespace App\Http\Controllers;

use App\Models\Pemesanan;
use App\Models\Produk;
use App\Models\Toko;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class LaporanController extends Controller
{
    public function index()
    {
        return view('superadmin.laporan.index');
    }
    public function pilih()
    {
        $jenis = request()->get('jenis');
        if ($jenis == '1') {
            $data = Toko::get();
            $pdf = Pdf::loadView('superadmin.laporan.pdf_umkm', compact('data'))->setPaper('a4', 'landscape');;
            return $pdf->stream();
        }

        if ($jenis == '2') {
            $data = Produk::get();
            $pdf = Pdf::loadView('superadmin.laporan.pdf_produk', compact('data'))->setPaper('a4', 'landscape');;
            return $pdf->stream();
        }

        if ($jenis == '3') {
            $data = Pemesanan::get();
            $pdf = Pdf::loadView('superadmin.laporan.pdf_pemesanan', compact('data'))->setPaper('a4', 'landscape');;
            return $pdf->stream();
        }
    }
}
