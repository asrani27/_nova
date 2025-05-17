<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan</title>
</head>

<body>

    <table width="100%">
        <tr>
            <td width="15%">
                <img src="data:image/jpeg;base64,{{ base64_encode(file_get_contents(public_path('logo/bjm.png'))) }}"
                    width="100px">
            </td>
            <td style="text-align: center;" width="60%">

                <font size="24px"><b>PEMERINTAH KOTA BANJARMASIN<br /> DINAS KOPERASI USAHA MIKRO DAN TENAGA KERJA
                    </b></font><br />

                Jl Komp. Semanda Sungai Lulut. Kec Banjarmasin Timur. kota Banjarmasin. Kalimantan Selatan. 70653
            </td>
            <td width="15%">
            </td>
        </tr>
    </table>
    <hr>
    <h3 style="text-align: center">LAPORAN DATA PRODUK
    </h3>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Nama Produk</th>
            <th>Harga</th>
            <th>Nama UMKM</th>
        </tr>
        @php
        $no =1;
        @endphp

        @foreach ($data as $key => $item)
        <tr>
            <td>{{$key + 1}}</td>
            <td>{{$item->nama}}</td>
            <td>Rp. {{number_format($item->harga)}}</td>
            <td>{{$item->toko->nama_toko}}</td>
        </tr>
        @endforeach
    </table>

    <table width="100%">
        <tr>
            <td width="60%"></td>
            <td></td>
            <td><br />Mengetahui, {{\Carbon\Carbon::now()->translatedFormat('d F Y')}}<br />
                Kepala Dinas<br /><br /><br /><br />

                H.Muhammad Isa Ansari, SE, M.AP
                <u>-</u><br />
                NIP. 19680111 199303 1 006
            </td>
        </tr>
    </table>
</body>

</html>