@if(Session::has('message'))
<div class="alert alert-success alert-dismissible" role="alert" id="oculta">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <div class="pull-left"><h4>{{Session::get('message')}}</h4></div>
  <div class="pull-right"><img src="{{asset('images/pollito2.GIF')}}" width="55px" height="43px"></div>  
  <!--font size="4">{{Session::get('message')}}</font--> 
</div>
@endif