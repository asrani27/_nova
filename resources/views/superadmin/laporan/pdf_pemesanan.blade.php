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
    <h3 style="text-align: center">LAPORAN DATA PEMESANAN
    </h3>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Kode Transaksi</th>
            <th>Tanggal</th>
            <th>Konsumen</th>
            <th>Detail Pemesanan</th>
            <th>Total</th>
        </tr>
        @php
        $no =1;
        @endphp

        @foreach ($data as $key => $item)
        <tr>
            <td>{{$key + 1}}</td>
            <td>T-0{{$item->id}}</td>
            <td>{{$item->tanggal}}</td>
            <td>{{$item->konsumen == null ? '': $item->konsumen->nama}}</td>
            <td>
                <ul>

                    @foreach ($item->detail as $item2)
                    <li>{{$item2->produk->nama}} - Rp. {{number_format($item2->produk->harga)}} -
                        ({{$item2->jumlah}}) buah</li>
                    @endforeach
                </ul>
            </td>
            <td>
                {{number_format($item->detail->sum('total'))}}
            </td>
        </tr>
        @endforeach
    </table>

    <table width="100%">
        <tr>
            <td width="60%"></td>
            <td></td>
            <td><br />Mengetahui, {{\Carbon\Carbon::now()->translatedFormat('d F Y')}}<br />
                Kepala Dinas<br /><br /><br /><br />

                <u>-</u><br />
                H.Muhammad Isa Ansari, SE, M.AP
                <u>-</u><br />
                NIP. 19680111 199303 1 006
            </td>
        </tr>
    </table>
</body>

</html>