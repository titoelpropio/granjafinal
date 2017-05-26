type = ['','info','success','warning','danger'];
      

demo = {
    initPickColor: function(){
        $('.pick-class-label').click(function(){
            var new_class = $(this).attr('new-class');  
            var old_class = $('#display-buttons').attr('data-class');
            var display_div = $('#display-buttons');
            if(display_div.length) {
            var display_buttons = display_div.find('.btn');
            display_buttons.removeClass(old_class);
            display_buttons.addClass(new_class);
            display_div.attr('data-class', new_class);
            }
        });
    },
    
    initChartist: function(){    
        
        var dataSales = {
          labels: ['1', '2', '3', '4', '5', '6','1', '2', '3', '4', '5', '6'],
          series: [
             [10,15,31,24,65,87,13,25,76,75,89,78,54,36,96,100],
             [20,35,71,44,85,47,13,25,76,75],

        

          ]
        };
        
        var optionsSales = {
          lineSmooth: false,
          low: 0,
          high: 100,
          showArea: true,
          height: "245px",
          axisX: {
            showGrid: false,
          },
          lineSmooth: Chartist.Interpolation.simple({
            divisor: 3
          }),
          showLine: false,
          showPoint: false,
        };
        
        var responsiveSales = [
          ['screen and (max-width: 640px)', {
            axisX: {
              labelInterpolationFnc: function (value) {
                return value[0];
              }
            }
          }]
        ];
    
        Chartist.Line('#chartHours', dataSales, optionsSales, responsiveSales);
        
    
        var data = {
          labels: ['Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
          series: [
            [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895],
            [412, 555, 740, 580, 453, 353, 300, 364, 368, 410, 636, 695],
             [412, 243, 280, 580, 453, 353, 300, 364, 368, 410, 636, 695]
          ]
        };
        
        var options = {
            seriesBarDistance: 10,
            axisX: {
                showGrid: false
            },
            height: "245px"
        };
        
        var responsiveOptions = [
          ['screen and (max-width: 640px)', {
            seriesBarDistance: 5,
            axisX: {
              labelInterpolationFnc: function (value) {
                return value[0];
              }
            }
          }]
        ];
        
        Chartist.Bar('#chartActivity', data, options, responsiveOptions);
    
        var dataPreferences = {
            series: [
                [25, 30, 20, 25]
            ]
        };
        
        var optionsPreferences = {
            donut: true,
            donutWidth: 40,
            startAngle: 0,
            total: 100,
            showLabel: false,
            axisX: {
                showGrid: false
            }
        };
    
        Chartist.Pie('#chartPreferences', dataPreferences, optionsPreferences);
        
        Chartist.Pie('#chartPreferences', {
          labels: ['62%','32%','6%'],
          series: [62, 32, 6]
        });   
    },
    
  
 

    
}

dataSales= "";



  tito={ 
    initChartist: function(){ 
    var id_edad=$('#id_edad').val();

       $.get('Rgrafico_postura/'+id_edad,function(res){


 // var dataSales = {
 //          labels: ['ENERO', 'FEBRERO', 'MARZO', '4', '5', '6', '7', '8','9','10','11','12'],
 //          series: [
 //             [40, 20, 40, 42, 54, 86, 98, 95, 52, 88, 46, 44, 44, 44, 44, 44, 44, 44, 44],
           
 //          ]
 //        };
      
       
        
        var optionsSales = {
          lineSmooth: false,
          low: 0,
          high: 100,
          showArea: true,
          height: "245px",
          axisX: {
            showGrid: false,
          },
          lineSmooth: Chartist.Interpolation.simple({
            divisor: 3
          }),
          showLine: false,
          showPoint: false,
        };
        
        var responsiveSales = [
          ['screen and (max-width: 640px)', {
            axisX: {
              labelInterpolationFnc: function (value) {
                return value[0];
              }
            }
          }]
        ];
    
        Chartist.Line('#chartHours', dataSales, optionsSales, responsiveSales);
        
       });
  
    
        // var data = {
        //   labels: ['Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        //   series: [
        //     [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895],
        //     [412, 243, 280, 580, 453, 353, 300, 364, 368, 410, 636, 695]
        //   ]
        // };
        
        // var options = {
        //     seriesBarDistance: 10,
        //     axisX: {
        //         showGrid: false
        //     },
        //     height: "245px"
        // };
        
        // var responsiveOptions = [
        //   ['screen and (max-width: 640px)', {
        //     seriesBarDistance: 5,
        //     axisX: {
        //       labelInterpolationFnc: function (value) {
        //         return value[0];
        //       }
        //     }
        //   }]
        // ];
        
        // Chartist.Bar('#chartActivity', data, options, responsiveOptions);
    
      
    },
    



}


