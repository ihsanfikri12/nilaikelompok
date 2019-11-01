<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\skorSprint;

class SkorSprintController extends Controller
{
     //show index
     public function index () {
        return skorSprint::all();
    }

    public function show($id)
    {
        $skorSprint = skorSprint::find($id);
        return $skorSprint;
    }

    //index (create data) 
    public function create (request $request) {
        $skorSprint = new skorSprint;
        $skorSprint->nilaiPoint = $request->nilaiPoint;
        $skorSprint->nilaiDosen = $request->nilaiDosen;
        $skorSprint->nilaiSprint = $request->nilaiSprint;
        $skorSprint->sprint = $request->sprint;
        $skorSprint->idTim = $request->idTim;
        $skorSprint->idNilaiFinal = $request->idNilaiFinal;
        $skorSprint->save();

        return "data berhasil masuk";
    }

    //index (update data) 
    public function update (request $request, $id) {
        $nilaiPoint = $request->nilaiPoint;
        $nilaiDosen = $request->nilaiDosen;
        $nilaiSprint = $request->nilaiSprint;
        $sprint = $request->sprint;
        $idTim = $request->idTim;
        $idNilaiFinal = $request->idNilaiFinal;
        

        $skorSprint = skorSprint::find($id);
        $skorSprint->nilaiPoint = $nilaiPoint;
        $skorSprint->nilaiDosen = $nilaiDosen;
        $skorSprint->nilaiSprint = $nilaiSprint;
        $skorSprint->sprint = $sprint;
        $skorSprint->idTim = $idTim;
        $skorSprint->idNilaiFinal = $idNilaiFinal;
        $skorSprint->save();

        return "data berhasil diupdate";
    }

    public function delete ($id) {
        $skorSprint = skorSprint::find($id);
        $skorSprint->delete();

        return "Data Berhasil di delete" ;
    }
}
