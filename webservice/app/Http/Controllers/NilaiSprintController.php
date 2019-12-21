<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\nilaiSprint;

class NilaiSprintController extends Controller
{
     //show index
     public function index () {
        return nilaiSprint::all();
    }

    public function show($id)
    {
        $nilaiSprint = nilaiSprint::where('idTim',$id)->get();
        return $nilaiSprint;
    }

    //index (create data) 
    public function create (request $request) {
        $nilaiSprint = new nilaiSprint;
        $nilaiSprint->nilai = $request->nilai;
        $nilaiSprint->tim_id = $request->tim_id;
        $nilaiSprint->sprint_id = $request->sprint_id;
        $nilaiSprint->save();

        return $nilaiSprint;
    }

    //index (update data) 
    public function update (request $request, $id) {
        $nilai = $request->nilai;
        $tim_id = $request->tim_id;
        $sprint_id = $request->sprint_id;
        

        $nilaiSprint = nilaiSprint::find($id);
        $nilaiSprint->nilai = $nilai;
        $nilaiSprint->tim_id = $tim_id;
        $nilaiSprint->sprint_id = $sprint_id;
        $nilaiSprint->save();

        return $nilaiSprint;
    }

    public function delete ($id) {
        $nilaiSprint = nilaiSprint::find($id);
        $nilaiSprint->delete();

        return "Data Berhasil di delete" ;
    }
}
