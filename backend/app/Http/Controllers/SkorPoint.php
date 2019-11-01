<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;

class SkorPoint extends Controller
{
    //show all skor point
    public function index()
    {
        $client = new Client(['base_uri' => 'http://127.0.0.1:8000/api/skorpoint']);
        $request = $client->request('GET');
        // $response = json_decode($request->getBody());
        // echo $response[0]->id;
        $response = $request->getBody();
        return $response;
    }

    // Tambah nilai point
    public function create(Request $request)
    {
        $point = $request->point;
        $status = $request->status;
        $keterangan = $request->keterangan;
        $sprint = $request->sprint;
        $idUser = $request->idUser;
        $idTim = $request->idTim;
        $idSkorSprint = $request->idSkorSprint;

        $client = new \GuzzleHttp\Client();
        $response = $client->request('POST', "http://127.0.0.1:8000/api/skorpoint", [
            'form_params' => [
                'point' => $point,
                'status' => $status,
                'keterangan' => $keterangan,
                'sprint' => $sprint,
                'idUser' => $idUser,
                'idTim' => $idTim,
                'idSkorSprint' => $idSkorSprint,
         ]]);

         return "data berhasil dibuat";
    }


    //show skor point by id    
    public function show($id)
    {
        $client = new Client(['base_uri' => "http://127.0.0.1:8000/api/skorpoint/$id"]);
        $request = $client->request('GET');
        $response = $request->getBody();
        // $data = json_decode($response);
        // return $data->point;
        return $response;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\r  $r
     * @return \Illuminate\Http\Response
     */
    public function edit(r $r)
    {
        //
    }


     //update point
    public function update(Request $request, $id)
    {
        $point = $request->point;
        $status = $request->status;
        $keterangan = $request->keterangan;
        $sprint = $request->sprint;
        $idUser = $request->idUser;
        $idTim = $request->idTim;
        $idSkorSprint = $request->idSkorSprint;

        $client = new \GuzzleHttp\Client();
        $response = $client->request('PUT', "http://127.0.0.1:8000/api/skorpoint/$id", [
            'form_params' => [
                'point' => $point,
                'status' => $status,
                'keterangan' => $keterangan,
                'sprint' => $sprint,
                'idUser' => $idUser,
                'idTim' => $idTim,
                'idSkorSprint' => $idSkorSprint,
         ]]);

         return "data berhasil dibuat";
    }

    public function delete($id)
    {
        $client = new Client(['base_uri' => "http://127.0.0.1:8000/api/skorpoint/$id"]);
        $request = $client->request('DELETE');
        return "data berhasil didelete";
    }
}
