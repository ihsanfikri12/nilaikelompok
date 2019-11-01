<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\nilaiFinal;

class NilaiFinalController extends Controller
{
         //show index
         public function index () {
            return nilaiFinal::all();
        }
    
        public function show($id)
        {
            $nilaiFinal = nilaiFinal::find($id);
            return $skorSprint;
        }
    
        //index (create data) 
        public function create (request $request) {
            $nilaiFinal = new nilaiFinal;
            $nilaiFinal->finalNilaiSprint = $request->finalNilaiSprint;
            $nilaiFinal->nilaiUts = $request->nilaiUts;
            $nilaiFinal->nilaiUas = $request->nilaiUas;
            // $nilaiFinal->finalSkorTim = $request->finalSkorTim;
            $nilaiFinal->idTim = $request->idTim;
            $nilaiFinal->save();
    
            return $nilaiFinal;
        }
    
        //index (update data) 
        public function update (request $request, $id) {

            // $finalNilaiSprint = $request->finalNilaiSprint;
            $nilaiUts = $request->nilaiUts;
            $nilaiUas = $request->nilaiUas;
            // $finalSkorTim = $request->finalSkorTim;
            $idTim = $request->idTim;
  
    
            $nilaiFinal = nilaiFinal::find($id);
            // $nilaiFinal->finalNilaiSprint = $finalNilaiSprint;
            $nilaiFinal->nilaiUts = $nilaiUts == null ? $nilaiFinal->nilaiUts: $nilaiUts;
            $nilaiFinal->nilaiUas = $nilaiUas  == null ? $nilaiFinal->nilaiUas: $nilaiUas;
            // $nilaiFinal->finalSkorTim = $finalSkorTim;
            $nilaiFinal->idTim = $idTim == null ? $nilaiFinal->idTim:$idTim;
            $nilaiFinal->save();
    
            return $nilaiFinal;
    
            
        }
    
        public function delete ($id) {
            $nilaiFinal = nilaiFinal::find($id);
            $nilaiFinal->delete();
    
            return "Data Berhasil di delete" ;
        }
}
