
<?php
 
require 'rb.php';
 

R::setup( 'mysql:host=localhost;dbname=CSC411_Project','root', '' ); //for both mysql or mariaDB


$vehicles = BeansToArray( R::find( 'vehicles'));
 
foreach ($vehicles as $vehicle) {

    $model =  BeanToObject( R::load( 'models', $vehicle->ModelId )); 
    $dealer =  BeanToObject( R::load( 'dealers', $vehicle->DealerId )); 
    $model->Brand = BeanToObject( R::load( 'brands', $model->BrandId ));
    $vehicle->Dealer = $dealer;
    $vehicle->Model = $model;
}
  

$dealers =  BeansToArray( R::Find( 'dealers')); 
$brands =  BeansToArray( R::Find( 'brands')); 
$models =      BeansToArray( R::Find( 'models')); 


$cur_brand="";
$cur_model="";
$cur_dealer="";
$cur_transmission="";

if(isset($_GET['brand']) && strlen($_GET['brand'])>0) $cur_brand = $_GET['brand'];

if(isset($_GET['model']) && strlen($_GET['model'])>0) $cur_model = $_GET['model'];

if(isset($_GET['dealer']) && strlen($_GET['dealer'])>0) $cur_dealer = $_GET['dealer'];

if(isset($_GET['transmission']) && strlen($_GET['transmission'])>0) $cur_transmission = $_GET['transmission'];



$found_vehicles= [];

foreach ($vehicles as $vehicle) {
    if($vehicle->Sold=="1") continue;
                        
    if($cur_brand!="" && $vehicle->Model->Brand->id!=$cur_brand) continue;
   
    if($cur_model!="" && $vehicle->Model->id!=$cur_model) continue;

    if($cur_transmission!="" && strtolower(get_options($vehicle->id,"Transmission"))!=$cur_transmission) continue;

    $found_vehicles[]= $vehicle;
}
 

function BeansToArray($beans) {
    $arr =[];
    foreach ($beans as $bean) {
      $arr[] =  json_decode(json_encode($bean));
    }

    return $arr;
}


function BeanToObject($bean) {
     
       return json_decode(json_encode($bean));
    
}


 function get_sold_cars() {
     global $vehicles;
        $i =0;
        
        foreach ($vehicles as $vehicle) {
            if($vehicle->Sold=="1") $i++; 
        }

    return $i;
}

function get_options($vehicleId,$opt) {
    $options =   R::getAll("SELECT * FROM `options` WHERE `VehicleId` ='".$vehicleId."' AND `Property` LIKE '".$opt."'");
     if(count($options)>0) return $options[0]["Value"];
}


?>




<!doctype html>
<html class="no-js" lang="en">
    
 <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>CSC 411 Course Project - Car Dealership</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
        <!-- Place favicon.ico in the root directory -->

		<!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/default.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
<script>
    
    var vehicles = JSON.parse(<?php  echo("'".json_encode($vehicles)."'"); ?>);
    var models = JSON.parse(<?php  echo("'".json_encode($models)."'"); ?>);
 
    var cur_brand="<?php echo $cur_brand; ?>";
    var cur_model="<?php echo $cur_model; ?>";
    var cur_dealer="<?php echo $cur_dealer; ?>";
    var cur_transmission="<?php echo $cur_transmission; ?>";

</script>

    </head>
    <body>
        <!-- main-area -->
        <main>

            <!-- slider-area -->
                        <div class="container custom-container">
                            <div class="row">
                                <div class="col-xl-5 col-lg-6">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider">
                      
                        <div class="container custom-container">
                            <div class="row">
                                <div class="col-xl-5 col-lg-6">
                                  
                                </div>
                            </div>
                        </div>
            <!-- slider-area-end -->
   
            <!-- car-search-area -->
            <section class="car-search-area gray-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="car-search-wrap">
                                <div class="small-title mb-20">
                                    <h4><i class="flaticon-searching-car"></i> LOOKING FOR A <span>CAR?</span></h4>
                                </div>
                                <form action="#" class="car-search-form">
                                    <div class="row align-items-end">
                                        <div class="col custom-col-5">
                                            <label>&nbsp;&nbsp;CAR BRAND</label> <br/>
                                            <select id="brand" name="brand" style="background: rgba(0,0,0,0.1);height: 40px" onChange="update_model()" class="nice-select">
                                                
                                            <option value="">Select Brand</option>
                                         
                                                <?php foreach ($brands as $brand) {  ?>
                                                   <option value="<?php echo($brand->id) ?>"><?php echo($brand->Name) ?></option> 
                                                <?php } ?>

                                                
                                            </select>
                                        </div>
                                        <div class="col custom-col-5">
                                            <label>&nbsp;&nbsp;CAR MODEL</label><br/>
                                            <select id="model" name="model" style="background: rgba(0,0,0,0.1);height: 40px"  class="nice-select">
                                                <option value="">All Models</option> 
                                            </select>
                                        </div>
                                        <div class="col custom-col-5">
                                            <label>&nbsp;&nbsp;DEALER</label><br/>
                                            <select id="dealer" name="dealer" style="background: rgba(0,0,0,0.1);height: 40px" class="nice-select">
                                                <option value="">All Dealers</option> 
                                                
                                                <?php foreach ($dealers as $dealer) {  ?>
                                                   <option value="<?php echo($dealer->id) ?>"><?php echo($dealer->Name) ?></option> 
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="col custom-col-5">
                                            <label>&nbsp;&nbsp;Transmission</label><br/>
                                            <select id="transmission" name="transmission" style="background: rgba(0,0,0,0.1);height: 40px" class="nice-select">
                                            <option value="">All Transmissions</option>
                                                <option value="manual">Manual</option>
                                                <option value="automatic">Automatic</option>
                                                <option value="electric">Electric</option>
                                                <option value="cvt">CVT</option> 
                                            </select>
                                        </div>
                                        <div class="col custom-col-5">
                                            <button class="btn">SEARCH VEHICLE</button>
                                        </div>
                                    </div>
                                </form>
                                
                                <div class="car-search-shape"><img src="img/images/car_search_shape.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 
            <!-- car-search-area-end -->
            <?php if( $cur_brand!="") {  ?>
            <br/>
            <br/>
            <br/>
            <section class="car-search-area gray-bg">
                <div class="container">
                    <div class="row">
                      
                        <div class="col-12 card">
                        <br/>
                        <div class="small-title mb-20">
                                    <h4>  Total Cars Found <span><?php echo count($found_vehicles) ?>/<?php echo(count($vehicles) - get_sold_cars()); ?></span></h4>
                                </div>     

            <table id="tbl" class="table table-striped">
                    <thead style="">
                        <tr>
                        <th scope="col"> </th>
                        <th scope="col"></th>
                        <th scope="col">MAKE</th>
                        <th scope="col">VIN</th>
                        <th scope="col">MODEL</th>
                        <th scope="col">DEALER</th>
                        <th scope="col">PHONE</th>
                        <th scope="col">EMAIL</th>
                        <th scope="col">TRANSMISSION</th>
                        <th scope="col">COLOR</th>
                        <th scope="col">BODY</th>
                        <th scope="col">CAPACITY</th>
                        </tr>
                    </thead>
                    <tbody>

                      <?php 
                      $i=1;
                      foreach ($found_vehicles as $vehicle) {
                         
                      ?>

                        <tr>
                        <th scope="row"><?php echo $i++ ?></th>
                        <td><span class="badge badge-success">Available</span></td>
                        <td><?php echo $vehicle->Name ?></td>
                        <td><?php echo $vehicle->Vin ?></td>
                        <td><?php echo $vehicle->Model->Name ?></td>
                        <td><?php echo $vehicle->Dealer->Name ?></td>
                        <td><?php echo $vehicle->Dealer->Phone ?></td>
                        <td><?php echo $vehicle->Dealer->Email ?></td>
                        <td><?php echo get_options($vehicle->id,"Transmission") ?></td>
                        <td><?php echo get_options($vehicle->id,"Color") ?></td>
                        <td><?php echo get_options($vehicle->id,"Body") ?></td>
                        <td><?php echo get_options($vehicle->id,"Capacity") ?></td>
                        </tr> 
                      <?php }
                      
                     
                      
                      ?>
                    </tbody>
                    </table>
                    </div>
                        </div>
                    </div>
                </div>
                <br/>
                <br/>
                      <?php } ?>
                <br/> 
                <br/>
                <br/>
        </main>
        <!-- main-area-end -->

		<!-- JS here -->
        <script src="filter.js"></script>
    </body>
 
    </html>
