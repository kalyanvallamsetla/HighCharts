<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Highcharts Example</title>

		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript">
$(function () {
    $('#container').highcharts({

	    chart: {
	        type: 'boxplot'
	    },
	    
	    title: {
	        text: 'Highcharts Box Plot Example'
	    },
	    
	    legend: {
	        enabled: false
	    },
	
	    xAxis: {
	        categories: ['1', '2', '3', '4', '5'],
	        title: {
	            text: 'Experiment No.'
	        }
	    },
	    
	    yAxis: {
	        title: {
	            text: 'Observations'
	        },
	        plotLines: [{
	            value: 932,
	            color: 'red',
	            width: 1,
	            label: {
	                text: 'Theoretical mean: 932',
	                align: 'center',
	                style: {
	                    color: 'gray'
	                }
	            }
	        }]  
	    },
	
	    series: [{
	        name: 'Observations',
	        data: [
	            [760, 801, 848, 895, 965],
	            [733, 853, 939, 980, 1080],
	            [714, 762, 817, 870, 918],
	            [724, 802, 806, 871, 950],
	            [834, 836, 864, 882, 910]
	        ],
	        tooltip: {
	            headerFormat: '<em>Experiment No {point.key}</em><br/>'
	        }
	    }, {
	        name: 'Outlier',
	        color: Highcharts.getOptions().colors[0],
	        type: 'scatter',
	        data: [ // x, y positions where 0 is the first category
	            [0, 644],
	            [4, 718],
	            [4, 951],
	            [4, 969]
	        ],
	        marker: {
	            fillColor: 'white',
	            lineWidth: 1,
	            lineColor: Highcharts.getOptions().colors[0]
	        },
	        tooltip: {
	            pointFormat: 'Observation: {point.y}'
	        }
	    }]
	
	});
});
		</script>
	</head>
	<body>
<script src="${pageContext.request.contextPath}/js/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/js/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/js/modules/exporting.js"></script>

<div id="container" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px"></div>
	</body>
</html>
