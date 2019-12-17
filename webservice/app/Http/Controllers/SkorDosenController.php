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
         $skorDosen->TotalNilai = ($request->KetepatanWaktu*(40/100))+($request->Kelengkapan*(30/100))+($request->KualitasHasil*(30/100));
         $skorDosen->sprint = $request->sprint;
         $skorDosen->idUser = $request->idUser;
         $skorDosen->idTim = $request->idTim;
         $skorDosen->idSkorSprint = $request->idSkorSprint;
         $skorDosen->MatKul = strtoupper($request->Matkul);
         $skorDosen->save();
 
         return $skorDosen;
     }
 
      //show all skor dosen
     public function index()
     {
         $skorDosen = skorDosen::all();
         return $skorDosen;
     }

     public function showbyid($id)
     {
         $skorDosen = skorDosen::find($id);
         return $skorDosen;
     }
 
     //show skor dosen by id
     public function show($id,$sprint)
     {
        $skorDosen = skorDosen::where('idTim',$id)->where('sprint',$sprint)->get();
        return $skorDosen;
 
         // $skorDosen = SkorDose n::select('idTim')->where('idUser',$id)->get();
         // return $skorDosen;
     }

     //show skor dosen by id
     public function showByMatkul(Request $request)
     {
        $matkul = $request->matkul;
        $idTim = (int)$request->idTim;

        $skorDosen = skorDosen::where('MatKul',$matkul)->where('idTim',$idTim)->get();
        
        return $skorDosen;
        // echo $skorDosen;
        // return $idTim;
         // $skorDosen = SkorDose n::select('idTim')->where('idUser',$id)->get();
         // return $skorDosen;
     }
    
     //update skor dosen
     public function update(Request $request, $id)
     {
        //  $KetepatanWaktu = $request->KetepatanWaktu;
        //  $Kelengkapan = $request->Kelengkapan;
        //  $KualitasHasil = $request->KualitasHasil;
        // //  $TotalNilai = $request->TotalNilai;
        //  $sprint = $request->sprint;
        //  $idUser = $request->idUser;
        //  $idTim = $request->idTim;
        //  $Matkul = $request->Matkul;
        //  $idSkorSprint = $request->idSkorSprint;
 
         $skorDosen = skorDosen::find($id);
 
         $skorDosen->KetepatanWaktu = $request->KetepatanWaktu;
         $skorDosen->Kelengkapan = $request->Kelengkapan;
         $skorDosen->KualitasHasil = $request->KualitasHasil;
         $skorDosen->TotalNilai = ($request->KetepatanWaktu*(40/100))+($request->Kelengkapan*(30/100))+($request->KualitasHasil*(30/100));
         $skorDosen->sprint = $request->sprint;
         $skorDosen->idUser = $request->idUser;
         $skorDosen->idTim = $request->idTim;
        //  $skorDosen->idSkorSprint = $request->idSkorSprint;
         $skorDosen->MatKul = strtoupper($request->Matkul);

         $skorDosen->save();

 
         return $skorDosen;
     }
 
     //delete skor dosen
     public function delete ($id) {
         $skorDosen = skorDosen::find($id);
         $skorDosen->delete();
 
         return $skorDosen;
     }
}
