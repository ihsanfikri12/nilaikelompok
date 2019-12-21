<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\nilaiDosen;

class NilaiDosenController extends Controller
{
    public function create(Request $request)
     {
        $nilaiDosen = new nilaiDosen;
        $nilaiDosen->KetepatanWaktu = $request->KetepatanWaktu;
        $nilaiDosen->Kelengkapan = $request->Kelengkapan;
        $nilaiDosen->KualitasHasil = $request->KualitasHasil;
        $nilaiDosen->TotalNilai = round(floatval(($request->KetepatanWaktu*(40/100))+($request->Kelengkapan*(30/100))+($request->KualitasHasil*(30/100))),2);
        $nilaiDosen->tim_id = $request->tim_id;
        $nilaiDosen->user_id = $request->user_id;
        $nilaiDosen->matkul_id = $request->matkul_id;
        $nilaiDosen->sprint_id = $request->sprint_id;
        $nilaiDosen->save();

        //  return $request->KetepatanWaktu;
        return $nilaiDosen;
     }
 
      //show all skor dosen
     public function index()
     {
         $nilaiDosen = nilaiDosen::all();
         return $nilaiDosen;
     }

     
 
     //show skor dosen by id
     public function show($id)
     {
        $nilaiDosen = nilaiDosen::find($id);
        return $nilaiDosen;
     }

     public function showbyuser($id,$idTim)
     {
        $nilaiDosen = nilaiDosen::where('user_id',$id)->where('tim_id',$idTim)->get();
        $kelompok = nilaiDosen::select('tim_id','user_id')->where('user_id',$id)->get();
        $data = [$nilaiDosen,$kelompok];
        return $data;
     }


    
     //update skor dosen
     public function update(Request $request, $id)
     {

         $nilaiDosen = nilaiDosen::find($id);
         $nilaiDosen->KetepatanWaktu = $request->KetepatanWaktu;
         $nilaiDosen->Kelengkapan = $request->Kelengkapan;
         $nilaiDosen->KualitasHasil = $request->KualitasHasil;
         $nilaiDosen->TotalNilai = ($request->KetepatanWaktu*(40/100))+($request->Kelengkapan*(30/100))+($request->KualitasHasil*(30/100));
         $nilaiDosen->tim_id = $request->tim_id;
         $nilaiDosen->user_id = $request->user_id;
         $nilaiDosen->matkul_id = $request->matkul_id;
         $nilaiDosen->sprint_id = $request->sprint_id;
         $nilaiDosen->save();

         return $nilaiDosen;
     }
 
     //delete skor dosen
     public function delete ($id) {
         $nilaiDosen = nilaiDosen::find($id);
         $nilaiDosen->delete();
 
         return $nilaiDosen;
     }
}
