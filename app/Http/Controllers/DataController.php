<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataCovid;
use App\DataGlobal;
use Storage;

class DataController extends Controller
{
    public function index()
    {
        $chartDate = $chartValues  =  array();
        $arrayData = array('परिक्षण गरिएको','संक्रमण देखिएको','निको भएको','मृत्यु भएको');
        $arrayDataColor = array('info','warning','success','danger');
        $dataTable = array("tested","confirmed","recovered","death","icu","occupied_icu","ventilator","occupied_ventilator","isolation_bed","occupied_isolation_bed","tested","facility_count","hotline");

        $dataCovid = DataCovid::orderBy('update_date', 'DESC')->get();
        $dataArray = array();
        foreach($dataCovid as $dC)
        {
        	$dateL =  explode(" ",str_replace("T"," ",$dC['update_date']))[0];
        	if(in_array($dateL,$dataArray))
        	{
        		//do nothing
        	}
        	else
        	{
	            $dC["recovered"] = $dC["total_recovered"];
	            $dataCovidN[$dateL] = $dC;
	            $dataArray[] = $dateL;        		
        	}
        }
        $dataCovid = array_values($dataCovidN);
        $lastValue = array();
        //chart
        //$dateRange = $this->range_date(explode(" ",str_replace("T"," ",$dataCovid[count($dataCovid)-1]['update_date']))[0], explode(" ",str_replace("T"," ",$dataCovid[0]['update_date']))[0]);
        //print_r($dateRange);

        //$i = 0;
        //$dateRange = array_reverse($dateRange);
        for($i= 0;$i < count($dataCovid) - 1;$i++)
        {   
            $chartDateNow = @explode(" ",str_replace("T"," ",$dataCovid[$i]['update_date']))[0];
           
            //if(in_array($chartDateNow,$dateRange))
            //{
                for($j=0;$j<=2;$j++)
                {
                    $chartValues[$j][] = $dataCovid[$i][$dataTable[$j]];
                    $lastValue[$j] = $dataCovid[$i][$dataTable[$j]];
                }
                $chartDate[] =  $chartDateNow;
            //}
            //else
            //{
            //     $chartDate[] =  str_replace("2020-","",$dateRange[$k]);
            //     $chartValues[0][] = $lastValue[0];
            //     $chartValues[1][] = $lastValue[1];
            //     $chartValues[2][] = $lastValue[2];
            // }
        }
        //end of chart

        //$newArr[0] = $chartDate[0];
        //$chartDate = $newArr;
        
        //$chartDate = array_merge(array($chartDate[0]),array_fill(0, count($chartDate) - 2 , ""),array($chartDate[count($chartDate) - 1])); 

        $dataExec = Storage::disk('local')->get('covidGlobal.txt');
        $dataObj = json_decode($dataExec,true);
        $dataGl = $dataGL = array();
        foreach($dataObj as $d)
        {
            $dataGl['country'] = $d['country'];
            $dataGl['flag'] = $d['countryInfo']['flag'];
            $dataGl['cases'] = $d['cases'];
            $dataGl['deaths'] = $d['deaths'];
            $dataGl['recovered'] = $d['recovered'];
            $dataGL[$d['countryInfo']['iso2']] = $dataGl;
        }

        $dataCovidGlobal = DataGlobal::orderBy('update_date', 'DESC')->get();
        return view('welcome',compact('dataCovid','dataCovidGlobal','arrayData','arrayDataColor','dataTable','chartValues','chartDate','dataGL'));
    }
    public function range_date($first, $last) {
        $arr = array();
        $now = strtotime($first);
        $last = strtotime($last);
      
        while($now <= $last ) {
          $arr[] = date('Y-m-d', $now);
          $now = strtotime('+1 day', $now);
        }
        return $arr;
    }
}
