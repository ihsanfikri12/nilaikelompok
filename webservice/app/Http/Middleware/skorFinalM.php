<?php

namespace App\Http\Middleware;

use Closure;
use App\skorSprint;
use App\nilaiFinal;

class skorFinalM
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
        $finalSprint = 0;
        $nilaiUts = $request2->nilaiUts;
        $nilaiUas = $request2->nilaiUas;

        // echo $request2->idTim;
        $totalSprint = skorSprint::select('nilaiSprint','sprint','id')->where('idTim',$request2->idTim)->get();
    
        foreach($totalSprint as $value) {
            $finalSprint = ($finalSprint+$value->nilaiSprint);
        }

        $totalFinal = nilaiFinal::find($request2->id);
        $totalFinal->finalNilaiSprint = $finalSprint==0 ? 0:$finalSprint/10;
        $totalFinal->finalSkorTim = $finalSprint==0 || $totalFinal->nilaiUts==0 || $totalFinal->nilaiUas==0 ? 0:(($finalSprint/10)*(45/100))+($totalFinal->nilaiUts * (25/100))+($totalFinal->nilaiUas*(25/100));
        $totalFinal->save();
        
        foreach ($totalSprint as $sprintNilai) {
            $idSkorSprint = skorSprint::find($sprintNilai->id);
            $idSkorSprint->idNilaiFinal = $totalFinal->id;
            $idSkorSprint->save();
            
        }
        return $response;
    }
}
