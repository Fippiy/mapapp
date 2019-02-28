$(function(){
  var MyLatLng = new google.maps.LatLng(34.6767339, 135.5052481);
  var Options = {
   zoom: 15,
   center: MyLatLng,
   mapTypeId: 'roadmap'
  };
  var map = new google.maps.Map(document.getElementById('map'), Options);
});


