<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\skorPoint;

class SkorPointController extends Controller
{
         //show index
         public function index () {
            return skorPoint::all();
        }
    
        //show skor dosen by id
        // public function show($id,$sprint)
        // {
        //     $skorPoint = skorPoint::where('idTim',$id)->where('sprint',$sprint)->get();
        //     return $skorPoint;
        // }

        // public function show($id,$idUser,$sprint)
        // {
        //     $skorPoint = skorPoint::where('idTim',$id)->where('idUser',$idUser)->where('sprint',$sprint)->get();
        //     return $skorPoint;
        // }

        public function show($id,$sprint) 
        {
            $skorPoint = skorPoint::where('idTim',$id)->where('sprint',$sprint)->get();
            return $skorPoint;
        }

        public function show2($id,$idUser)
        {
            $skorPoint = skorPoint::where('idTim',$id)->where('idUser',$idUser)->get();
            return $skorPoint;
        }
    
        //index (create data) 
        public function create (request $request) {
            $skorPoint = new skorPoint;
            $skorPoint->point = $request->point;
            $skorPoint->status = $request->status;
            $skorPoint->keterangan = $request->keterangan;
            $skorPoint->sprint = $request->sprint;
            $skorPoint->idUser = $request->idUser;
            $skorPoint->idTim = $request->idTim;
            $skorPoint->idSkorSprint = $request->idSkorSprint;
            $skorPoint->save();
    
            return $skorPoint;
        }
    
        //index (update data) 
        public function update (request $request, $id) {
            $point = $request->point;
            $status = $request->status;
            $keterangan = $request->keterangan;
            $sprint = $request->sprint;
            $idUser = $request->idUser;
            $idTim = $request->idTim;
            $idSkorSprint = $request->idSkorSprint;
            
    
            $skorPoint = skorPoint::find($id);
            $skorPoint->point = $point==null ? $skorPoint->point:$point ;
            $skorPoint->status = $status==null ? $skorPoint->status:$status;
            $skorPoint->keterangan = $keterangan==null ? $skorPoint->keterangan:$keterangan;
            $skorPoint->sprint = $sprint==null? $skorPoint->sprint:$sprint;
            $skorPoint->idUser = $idUser==null? $skorPoint->idUser:$idUser;
            $skorPoint->idTim = $idTim==null ? $skorPoint->idTim:$idTim;
            $skorPoint->idSkorSprint = $idSkorSprint==null? $skorPoint->idSkorSprint:$idSkorSprint ;
            $skorPoint->save();
    
            return $skorPoint;
        }
        
        public function showbyid($id)
        {
         $skorPoint = skorPoint::find($id);
         return $skorPoint;
        }
        public function delete ($id) {
            $skorPoint = skorPoint::find($id);
            $skorPoint->delete();
    
            return $skorPoint;
        }
}
