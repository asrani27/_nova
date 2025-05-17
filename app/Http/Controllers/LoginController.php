<?php

namespace App\Http\Controllers;

use App\Models\Konsumen;
use App\Models\Role;
use App\Models\User;
use GuzzleHttp\Client;
use App\Models\Peserta;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $req)
    {
        if (Auth::attempt(['username' => $req->username, 'password' => $req->password], true)) {
            if (Auth::user()->hasRole('superadmin')) {
                return redirect('/superadmin/home');
            } elseif (Auth::user()->hasRole('konsumen')) {
                return redirect('/konsumen/home');
            } else {
                return redirect('/user/home');
            }
        } else {
            toastr()->error('Username / Password Tidak Ditemukan');
            $req->flash();
            return back();
        }
    }

    public function daftar()
    {
        return view('daftar');
    }

    public function simpanDaftar(Request $req)
    {
        $role = Role::where('name', 'konsumen')->first();

        if (User::where('username', $req->username)->first() == null) {
            $user = new User;
            $user->name = $req->name;
            $user->username = $req->username;
            $user->password = bcrypt($req->password);
            $user->save();

            $user->roles()->attach($role);

            $konsumen = new Konsumen();
            $konsumen->nama = $req->name;
            $konsumen->alamat = $req->alamat;
            $konsumen->telp = $req->telp;
            $konsumen->user_id = $user->id;
            $konsumen->save();
            
            toastr()->success('Berhasil Di Simpan');

            return redirect('/konsumen/home');
        } else {
            toastr()->error('Username sudah digunakan');
            return back();
        }
    }
}
