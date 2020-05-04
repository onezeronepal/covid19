<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataCovid;
use App\DataGlobal;
use Storage;

class DataSave extends Controller
{
    public function index()
    {
        $endpoint = "https://covid19.mohp.gov.np/covid/api/confirmedcases";
        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', $endpoint,['verify' => false]);
        $statusCode = $response->getStatusCode();
        if($statusCode == 200)
        {
            $content = $response->getBody();
            $dataCovid = json_decode($content);
            $dataCovid = $dataCovid->nepal;
            $dataCovidU = new DataCovid();
            $dataCovidU->update_date = $dataCovid->updated_at;
            $dataCovidU->confirmed = $dataCovid->positive;
            $dataCovidU->isolation = $dataCovid->extra2;
            $dataCovidU->death = $dataCovid->deaths;
            $dataCovidU->icu = 0;
            $dataCovidU->occupied_icu = 0;
            $dataCovidU->ventilator = 0;
            $dataCovidU->occupied_ventilator = 0;
            $dataCovidU->isolation_bed = 0;
            $dataCovidU->occupied_isolation_bed = 0;
            $dataCovidU->tested = $dataCovid->samples_tested;
            $dataCovidU->facility_count = 0;
            $dataCovidU->hotline = ' ';
            $dataCovidU->total_recovered = $dataCovid->extra1;
            try{            
                if($dataCovidU->save()){
                    echo 'OK 1';
                }
            }
            catch(\Illuminate\Database\QueryException $e)
            {
                echo 'DUP 1';
            }
        }

        $endpoint = "https://covidapi.mohp.gov.np/api/v1/global-data/?format=json";
        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', $endpoint,['verify' => false]);
        $statusCode = $response->getStatusCode();
        if($statusCode == 200)
        {
            $content = $response->getBody();
            $dataCovid = json_decode($content);
            $dataCovid = $dataCovid[0];
            $dataCovidU = new DataGlobal();
            $dataCovidU->total_infected_global = $dataCovid->total_infected_global;
            $dataCovidU->total_recovered_global = $dataCovid->total_recovered_global;
            $dataCovidU->total_deaths_global = $dataCovid->total_deaths_global;
            $dataCovidU->update_date = $dataCovid->updated_at;      
            try{            
                if($dataCovidU->save()){
                    echo 'OK 2';
                }
            }
            catch(\Illuminate\Database\QueryException $e)
            {
               echo 'DUP 2';
            }
        }

        $endpoint = "https://corona.lmao.ninja/v2/countries?sort=cases";
        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', $endpoint,['verify' => false]);
        $statusCode = $response->getStatusCode();
        if($statusCode == 200)
        {
            $content = $response->getBody();
            Storage::put('covidGlobal.txt', $content);
            echo 'DATA OK';
        }

    }
}
