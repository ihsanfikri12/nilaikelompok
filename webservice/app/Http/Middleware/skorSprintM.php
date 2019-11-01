<?php

namespace App\Http\Middleware;

use Closure;
use App\skorDosen;
use App\skorPoint;
use App\skorSprint;

class skorSprintM
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $response = $next($request);

        $request2 = json_decode($response->getContent());
        $nilaiDosen2 = 0;
        $nilaiPoint2 = 0;
        $nilaiDosen = skorDosen::select('TotalNilai')->where('idTim',$request2->idTim)->where('sprint',$request2->sprint)->get();
        $nilaiPoint = skorPoint::select('point')->where('idTim',$request2->idTim)->where('sprint',$request2->sprint)->get();
        
        foreach($nilaiDosen as $value) {
            $nilaiDosen2 = $nilaiDosen2+$value->TotalNilai;
        }

       

        foreach($nilaiPoint as $value) {
            $nilaiPoint2 = $nilaiPoint2+$value->point;
        }

        if($nilaiPoint2<=15 && $nilaiPoint2>=12.6) {
            $nilaiPoint2 = 100;
        } else if ($nilaiPoint2>=10.1 && $nilaiPoint2<12.6) {
            $nilaiPoint2 = 90;
        } else if ($nilaiPoint2>=7.6 && $nilaiPoint2<10.1) {
            $nilaiPoint2 = 81;
        } else if ($nilaiPoint2>=5.1 && $nilaiPoint2<7.6) {
            $nilaiPoint2 = 72;
        } else if ($nilaiPoint2>=2.6 && $nilaiPoint2<5.1) {
            $nilaiPoint2 = 63;
        } else if ($nilaiPoint2>=0.1 && $nilaiPoint2<2.6) {
            $nilaiPoint2 = 54;
        } else if ($nilaiPoint2>=-2.5 && $nilaiPoint2<0.1) {
            $nilaiPoint2 = 45;
        } else if ($nilaiPoint2>=-5 && $nilaiPoint2<-2.5) {
            $nilaiPoint2 = 36;
        } else if ($nilaiPoint2>=-7.5 && $nilaiPoint2<-5) {
            $nilaiPoint2 = 27;
        } else if ($nilaiPoint2>=-10 && $nilaiPoint2<-7.5) {
            $nilaiPoint2 = 18;
        } else if ($nilaiPoint2>=-12.6 && $nilaiPoint2<-10) {
            $nilaiPoint2 = 9;
        } else if ($nilaiPoint2>=-15 && $nilaiPoint2<-12.5) {
            $nilaiPoint2 = 0;
        }

        $skorSprint = skorSprint::where('sprint',$request2->sprint)->where('idTim',$request2->idTim)->get();
        $point = $nilaiPoint2 == 0 ? 0:$nilaiPoint2 ;
        $DosenNilai = $nilaiDosen2 == 0 ? 0:$nilaiDosen2/count($nilaiDosen);
        // echo $skorSprint;
        if(count($skorSprint)==0) {
            $skorSprint = new skorSprint;
            $skorSprint->nilaiPoint = $point;
            $skorSprint->nilaiDosen = $DosenNilai;
            $skorSprint->nilaiSprint = $point==0 || $DosenNilai==0 ? 0:(($nilaiPoint2*(5/100))+(($nilaiDosen2/count($nilaiDosen))*(40/100)))*(100/45) || 0;
            $skorSprint->sprint = $request2->sprint;
            $skorSprint->idTim = $request2->idTim;

            // echo $skorSprint;
            $skorSprint->save();

            return $response;
        }

        $skorSprint = skorSprint::find($skorSprint[0]->id);
        $skorSprint->nilaiPoint = $point;
        $skorSprint->nilaiDosen = $DosenNilai;
        $skorSprint->nilaiSprint = $point==0 || $DosenNilai==0 ? 0: (($nilaiPoint2*(5/100))+(($nilaiDosen2/count($nilaiDosen))*(40/100)))*(100/45) || 0;
        $skorSprint->sprint = $request2->sprint;
        $skorSprint->idTim = $request2->idTim;
        $skorSprint->save();
        // echo $skorSprint;

        $skorDosen3 = skorDosen::where('sprint',$request2->sprint)->where('idTim',$request2->idTim)->get();
        $skorPoint3 = skorPoint::where('sprint',$request2->sprint)->where('idTim',$request2->idTim)->get();
        
        foreach ($skorDosen3 as $dosen) {
            $idSkorSprint = skorDosen::find($dosen->id);
            $idSkorSprint->idSkorSprint = $skorSprint->id;
            $idSkorSprint->save();
            // echo $idSkorSprint->idSkorSprint;
        }

        foreach ($skorPoint3 as $point) {
            $idSkorSprint = skorPoint::find($point->id);
            $idSkorSprint->idSkorSprint = $skorSprint->id;
            $idSkorSprint->save();
            
        }

        // echo $skorDosen3;
        return $response;
    }
}
