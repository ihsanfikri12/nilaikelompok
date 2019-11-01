<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;


class NilaiFinal extends Controller
{
       //show index
    public function index () {
        $client = new Client(['base_uri' => 'http://127.0.0.1:8000/api/skorfinal']);
        $request = $client->request('GET');
        $response = $request->getBody();
        return $response;
    }

    public function show($id)
    {
        $client = new Client(['base_uri' => "http://127.0.0.1:8000/api/skorfinal/$id"]);
        $request = $client->request('GET');
        $response = $request->getBody();
        return $response;
    }

    //index (create data) 
    public function create (request $request) {
        
        $finalNilaiSprint = $request->finalNilaiSprint;
        $nilaiUts = $request->nilaiUts;
        $nilaiUas = $request->nilaiUas;
        $finalSkorTim = $request->finalSkorTim;
        $idTim = $request->idTim;
        

        $client = new \GuzzleHttp\Client();
        $response = $client->request('POST', "http://127.0.0.1:8000/api/skorfinal", [
            'form_params' => [
                'finalNilaiSprint' => $finalNilaiSprint,
                'nilaiUts' => $nilaiUts,
                'nilaiUas' => $nilaiUas,
                'finalSkorTim' => $finalSkorTim,
                'idTim' => $idTim,
         ]]);

        return "data berhasil dibuat";
    }

    //index (update data) 
    public function update (request $request, $id) {

        $finalNilaiSprint = $request->finalNilaiSprint;
        $nilaiUts = $request->nilaiUts;
        $nilaiUas = $request->nilaiUas;
        $finalSkorTim = $request->finalSkorTim;
        $idTim = $request->idTim;
        

        $client = new \GuzzleHttp\Client();
        $response = $client->request('PUT', "http://127.0.0.1:8000/api/skorfinal/$id", [
            'form_params' => [
                'finalNilaiSprint' => $finalNilaiSprint,
                'nilaiUts' => $nilaiUts,
                'nilaiUas' => $nilaiUas,
                'finalSkorTim' => $finalSkorTim,
                'idTim' => $idTim,
         ]]);

        return "data berhasil diupdate";

        
    }

    public function delete ($id) {
        $client = new Client(['base_uri' => "http://127.0.0.1:8000/api/skordosen/$id"]);
        $request = $client->request('DELETE');
        return "data berhasil didelete";
    }

    
}
