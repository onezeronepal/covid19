<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Covid 19 | Nepal Stats</title>
    <meta name="description" content="Covid 19 | Nepal Stats">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="images/favicon.png">
    <link rel="shortcut icon" href="images/favicon.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
	<meta property="og:title" content="Covid19 Stats | Nepal">
	<meta property="og:site_name" content="ekSunye Analytics">
	<meta property="og:url" content="https://covid19.sasto.website/">
	<meta property="og:description" content="Know detail info about Covid19">
	<meta property="og:type" content="article">
	<meta property="og:image" content="https://covid19.sasto.website/ogCovid.jpg">
   <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }
        .stat-widget-five .stat-content {
            margin-left: 60px;
        }
        .stat{
        	font-size: calc(0.2em + 1vw) !important;
        }
    </style>
</head>

<body>
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel w-100 ml-0">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"> by <span class="text-dark py-2">ekSunye</span></a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                </div>
            </div>
        </header>
        <!-- /#header -->
        <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
                <!-- Widgets  -->
                <h3 class="p-2">आज सम्मको विवरण</h3>
                <div class="row">
                    @for($i=0;$i<=3;$i++)
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body bg-{{$arrayDataColor[$i]}}">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-1">
                                        <img src="images/profileImg.png" width="32px"/>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text  color-white">
                                                <span class="count">
                                                    {{$dataCovid[0][$dataTable[$i]]}}
                                                </span>
                                                @if($i==1)
                                                MOHP, Nepal</br>
                                                <span class="count">
                                                    {{$dataGL['NP']['cases']}}
                                                </span> Open Data
                                                @else
                                                </br></br>
                                                @endif
                                            </div>
                                            <div class="stat-heading  color-white">
                                                {{$arrayData[$i]}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endfor
                    <div class="text-right w-100 m-1 mx-3">Source: Ministry of Health and Population, Nepal</div>
                    <div class="alert alert-info w-100 mx-3 py-1"><span class="float-left"><strong>विश्वभरी (स्रोत WHO):</strong> <span class="p-1 alert-danger"><span class="text-danger">संक्रमित:</span> <strong>{{$dataCovidGlobal[0]['total_infected_global']}}</strong></span> <span class="p-1 alert-success">निको भएको: <strong>{{$dataCovidGlobal[0]['total_recovered_global']}}</strong></span> <span class="p-1 alert-danger"><span class="text-danger">मृत्यु भएको :</span> <strong>{{$dataCovidGlobal[0]['total_deaths_global']}}</strong></span></span><span class="float-right">Last updated {{explode(" ",str_replace("T"," ",$dataCovidGlobal[0]['update_date']))[0]}}</span></div>
                </div>
                <!-- /Widgets -->
                <!--  Traffic  -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">कोरोना भाइरस (कोभिड-१९)</h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="card-body p-0" style="height:400px;">
                                        <canvas id="tested_chart"></canvas>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="card-body p-0" style="height:400px;">
                                        <canvas id="infected_chart"></canvas>
                                    </div>
                                </div>
                            </div> <!-- /.row -->
                            <div class="card-body">कोरोना भाइरस (कोभिड-१९) बारे बुझ्न <button type="button" class="btn btn-success">यहा</button> जानुहोस्</div>
                        </div>
                    </div><!-- /# column -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">कोरोना भाइरस UNICEF भिडियो (कोभिड-१९)</h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="card-body">
                                       <iframe style="border-radius: 10px;" width="100%" height="315" src="https://www.youtube.com/embed/-sExYoXmhF4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card-body">
                                        <iframe style="border-radius: 10px;" width="100%" height="315" src="https://www.youtube.com/embed/qA5uggiPOzM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div> <!-- /.row -->
                        </div>
                    </div><!-- /# column -->
                </div>
                <div class="clearfix"></div>
                <!-- Orders -->
                <div class="orders   overflow-auto">
                    <div class="row">
                        <div class="col-xl-8">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="box-title">विवरण</h4>
                                </div>
                                <div class="card-body--">
                                    <div class="table-stats order-table ov-h">
                                        <table class="table ">
                                            <thead>
                                                <tr>
                                                    <th class="serial">#</th>
                                                    <th style="font-size:12px;">मिति सम्म</th>
                                                    <th style="font-size:12px;">{{$arrayData[0]}}</th>
                                                    <th style="font-size:12px;">{{$arrayData[1]}}</th>
                                               </tr>
                                            </thead>
                                            <tbody>
                                            @for($i= 0;$i <= 5;$i++)
                                                <tr>
                                                    <td class="serial">{{$i+1}}</td>
                                                    <td>{{explode(" ",str_replace("T"," ",$dataCovid[$i]['update_date']))[0]}}</td>
                                                    @for($j=0;$j<=1;$j++)
                                                     <td>{{$dataCovid[$i][$dataTable[$j]]}}</td>
                                                    @endfor
                                                </tr>                                            
                                            @endfor
                                            </tbody>
                                        </table>
                                    </div> <!-- /.table-stats -->
                                </div>
                            </div> <!-- /.card -->
                        </div>  <!-- /.col-lg-8 -->

                        <div class="col-xl-4">
                            <div class="row">
                                <div class="col-lg-12 col-xl-12">
                                    <div class="card">
                                        <div class="card-body my-3 p-2">
                                            <div class="chart-container ov-h">
                                                <img src="images/infographics/symptoms.png" class="w-100 justify-content-center align-self-center"/>
                                            </div>
                                        </div>
                                    </div><!-- /.card -->
                                </div>
                            </div>
                        </div> <!-- /.col-md-4 -->
                    </div>
                </div>
                <!-- /.orders -->
                <!-- To Do and Live Chat -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-content text-center h-25">
                                    <img src="images/infographics/washHands.png"/>
                                </div>
                            </div> <!-- /.card-body -->
                        </div><!-- /.card -->
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-content text-center h-25">
                                    <img src="images/infographics/elderCitizen.png"/>
                                </div>
                            </div> <!-- /.card-body -->
                        </div><!-- /.card -->
                    </div>
                </div>
                <!-- /To Do and Live Chat -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-content text-center h-25">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th class="stat serial">#</th>
                                                <th class="stat">Country</th>
                                                <th class="stat">Cases</th>
                                                <th class="stat">Deaths</th>
                                                <th class="stat">Recovered</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php $i=1; @endphp
                                            @foreach($dataGL as $dataG)
                                            <tr>
                                                <th class="stat" class="serial">{{$i}}</th>
                                                <th class="stat" style="text-align:left;"><img width="16px" src="{{$dataG['flag']}}"/> &nbsp;{{$dataG['country']}}</th>
                                                <th class="stat">{{$dataG['cases']}}</th>
                                                <th class="stat">{{$dataG['deaths']}}</th>
                                                <th class="stat">{{$dataG['recovered']}}</th>
                                            </tr>
                                            @php $i++; @endphp
                                            @endforeach 
                                        </tbody>
                                    </table>
                                    
                                </div>
                            </div> <!-- /.card-body -->
                        </div><!-- /.card -->
                    </div>
                </div>
            </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
        <div class="clearfix"></div>
        <!-- Footer -->
        <footer class="site-footer">
            <div class="footer-inner bg-white">
                <div class="row">
                    <div class="col-sm-6">
                        Copyright &copy; 2020
                    </div>
                    <div class="col-sm-6 text-right">
                        Powered by ekSunye Analytics
                    </div>
                </div>
            </div>
        </footer>
        <!-- /.site-footer -->
    </div>
    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
    <!--Local Stuff-->
    <script>
		var config1 = {
			type: 'line',
			data: {
				labels: {!!json_encode(array_reverse ($chartDate))!!},
				datasets: [{
					label: 'परिक्षण गरिएको',
					backgroundColor: '#2b5998',
					borderColor: '#2b5998',
					data: {!!json_encode(array_reverse ($chartValues[0]))!!},
					fill: false,
				}]
			},
			options: {
				 maintainAspectRatio: false,
				responsive: true,
				title: {
					display: true,
					text: 'परिक्षण गरिएको'
				},
				tooltips: {
					mode: 'index',
					intersect: false,
				},
				hover: {
					mode: 'nearest',
					intersect: true
				},
				scales: {
					xAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Days'
						}
					}],
					yAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'No of People'
						},
						ticks: {
							stepSize: 100
						}
					}]
				}
			}
		};
		
		var config2 = {
			type: 'line',
			data: {
				labels: {!!json_encode(array_reverse ($chartDate))!!},
				datasets: [{
					label: 'संक्रमित',
					backgroundColor: '#dc3545',
					borderColor: '#dc3545',
					data: {!!json_encode(array_reverse ($chartValues[1]))!!},
					fill: false,
				}]
			},
			options: {
				 maintainAspectRatio: false,
				responsive: true,
				title: {
					display: true,
					text: 'संक्रमित'
				},
				tooltips: {
					mode: 'index',
					intersect: false,
				},
				hover: {
					mode: 'nearest',
					intersect: true
				},
				scales: {
					xAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Days'
						}
					}],
					yAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'No of People'
						},
						ticks: {
							stepSize: 1
						}
					}]
				}
			}
		};

		window.onload = function() {
			var ctx1 = document.getElementById('tested_chart').getContext('2d');
			ctx1.height = 100;
			window.myLine = new Chart(ctx1, config1);
			var ctx2 = document.getElementById('infected_chart').getContext('2d');
			ctx2.height = 100;
			window.myLine = new Chart(ctx2, config2);
		};
    </script>
</body>
</html>