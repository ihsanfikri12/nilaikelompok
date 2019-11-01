<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\skorDosen;

class SkorDosenController extends Controller
{
     //create skor dosen
     public function create(Request $request)
     {
         //
         $skorDosen = new skorDosen;
         $skorDosen->KetepatanWaktu = $request->KetepatanWaktu;
         $skorDosen->Kelengkapan = $request->Kelengkapan;
         $skorDosen->KualitasHasil = $request->KualitasHasil;
         $skorDosen->TotalNilai = $request->TotalNilai;
         $skorDosen->sprint = $request->sprint;
         $skorDosen->idUser = $request->idUser;
         $skorDosen->idTim = $request->idTim;
         $skorDosen->idSkorSprint = $request->idSkorSprint;
         $skorDosen->save();
 
         return $skorDosen;
     }
 
      //show all skor dosen
     public function index()
     {
         $skorDosen = skorDosen::all();
         return $skorDosen;
     }
 
     //show skor dosen by id
     public function show($id)
     {
         $skorDosen = skorDosen::find($id);
         return $skorDosen;
 
         // $skorDosen = SkorDose n::select('idTim')->where('idUser',$id)->get();
         // return $skorDosen;
     }
    
     //update skor dosen
     public function update(Request $request, $id)
     {
         $KetepatanWaktu = $request->KetepatanWaktu;
         $Kelengkapan = $request->Kelengkapan;
         $KualitasHasil = $request->KualitasHasil;
         $TotalNilai = $request->TotalNilai;
         $sprint = $request->sprint;
         $idUser = $request->idUser;
         $idTim = $request->idTim;
        //  $idSkorSprint = $request->idSkorSprint;
 
         $skorDosen = skorDosen::find($id);
 
 
         $skorDosen->KetepatanWaktu = $KetepatanWaktu == null ? $skorDosen->KetepatanWaktu:$KetepatanWaktu ;
         $skorDosen->Kelengkapan = $Kelengkapan == null ? $skorDosen->Kelengkapan:$Kelengkapan;
         $skorDosen->KualitasHasil = $KualitasHasil == null ? $skorDosen->KualitasHasil:$KualitasHasil ;
         $skorDosen->TotalNilai = $TotalNilai == null ? $skorDosen->TotalNilai: $TotalNilai;
         $skorDosen->sprint = $sprint == null ? $skorDosen->sprint:$sprint;
         $skorDosen->idUser = $idUser == null ? $skorDosen->idUser:$idUser ;
         $skorDosen->idTim = $idTim == null ? $skorDosen->idTim:$idTim ;
        //  $skorDosen->idSkorSprint = $idSkorSprint;
         $skorDosen->save();
 
         return $skorDosen;
     }
 
     //delete skor dosen
     public function delete ($id) {
         $skorDosen = skorDosen::find($id);
         $skorDosen->delete();
 
         return "Data Berhasil di delete" ;
     }
}
