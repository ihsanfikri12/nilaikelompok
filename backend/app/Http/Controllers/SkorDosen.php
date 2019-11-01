<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;

class SkorDosen extends Controller
{

    //create skor dosen
    public function create(Request $request)
    {
        $KetepatanWaktu = $request->KetepatanWaktu;
        $Kelengkapan = $request->Kelengkapan;
        $KualitasHasil = $request->KualitasHasil;
        $TotalNilai = $request->TotalNilai;
        $sprint = $request->sprint;
        $idUser = $request->idUser;
        $idTim = $request->idTim;
        $idSkorSprint = $request->idSkorSprint;
        
        $client = new \GuzzleHttp\Client();
        $response = $client->request('POST', "http://127.0.0.1:8000/api/skordosen", [
            'form_params' => [
                'KetepatanWaktu' => $KetepatanWaktu,
                'Kelengkapan' => $Kelengkapan,
                'KualitasHasil' => $KualitasHasil,
                'TotalNilai' => $TotalNilai,
                'sprint' => $sprint,
                'idUser' => $idUser,
                'idTim' => $idTim,
                'idSkorSprint' => $idSkorSprint,
         ]]);

        return "data berhasil dibuat";
    }

    //show all skow dosen
    public function index()
    {
        $client = new Client(['base_uri' => 'http://127.0.0.1:8000/api/skordosen']);
        $request = $client->request('GET');
        $response = $request->getBody();
        return $response;
    }

    public function show ($id) {
        $client = new Client(['base_uri' => "http://127.0.0.1:8000/api/skordosen/$id"]);
        $request = $client->request('GET');
        $response = $request->getBody();
        return $response;
    }

    public function update(Request $request, $id)
    {
        $KetepatanWaktu = $request->KetepatanWaktu;
        $Kelengkapan = $request->Kelengkapan;
        $KualitasHasil = $request->KualitasHasil;
        $TotalNilai = $request->TotalNilai;
        $sprint = $request->sprint;
        $idUser = $request->idUser;
        $idTim = $request->idTim;
        $idSkorSprint = $request->idSkorSprint;
        
        $client = new \GuzzleHttp\Client();
        $response = $client->request('PUT', "http://127.0.0.1:8000/api/skordosen/$id", [
            'form_params' => [
                'KetepatanWaktu' => $KetepatanWaktu,
                'Kelengkapan' => $Kelengkapan,
                'KualitasHasil' => $KualitasHasil,
                'TotalNilai' => $TotalNilai,
                'sprint' => $sprint,
                'idUser' => $idUser,
                'idTim' => $idTim,
                'idSkorSprint' => $idSkorSprint,
         ]]);

        return "data berhasil diupdate";
    }

    public function delete ($id) {
        $client = new Client(['base_uri' => "http://127.0.0.1:8000/api/skordosen/$id"]);
        $request = $client->request('DELETE');
        return "data berhasil didelete";
    }

}

