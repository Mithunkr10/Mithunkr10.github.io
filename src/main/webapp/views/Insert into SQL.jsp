<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html  >
<head>
  <!-- Add new Trip Details -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="views/assets/images/logo2.png" type="image/x-icon">
  <meta name="description" content="Home page to my Travel log website.">
  
  
  <title>Add new Trip Details</title>
  <link rel="stylesheet" href="views/assets/web/assets/icons/icons.css">
  <link rel="stylesheet" href="views/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="views/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="views/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="views/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="views/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="views/assets/tether/tether.min.css">
  <link rel="stylesheet" href="views/assets/theme/css/style.css">
  <link rel="stylesheet" href="views/assets/gallery/style.css">
  <link rel="preload" as="style" href="views/assets/CSS/css/mbr-additional.css">
  <link rel="stylesheet" href="views/assets/CSS/css/mbr-additional.css" type="text/css">
  
  <script>
function addInputBox() {

var ni = document.getElementById('myDiv');

var numi = document.getElementById('theValue');

var num = (document.getElementById('theValue').value -1)+ 2;

numi.value = num;

var newdiv = document.createElement('div');

var divIdName = 'Stop '+num+' name';

var sn="";

newdiv.setAttribute('id',divIdName);

newdiv.innerHTML = "<input type=\"text\" id=\"Stopname\" class=\"form-control display-7\" placeholder=\"Stop name\" required=\"required\" /> <input type=\"button\" onclick=\"removeInputBox(\'"+divIdName+"\')\" value='Remove' class=\"btn btn-secondary display-4\" />"+divIdName;

sn = sn + $('#Stopname').val();

ni.appendChild(newdiv);

}

function removeInputBox(divNum) {


var d = document.getElementById('myDiv');

var olddiv = document.getElementById(divNum);

d.removeChild(olddiv);

}

function goback(){
	window.history.back();
}
	
</script>
  
</head>
<body>
  <section class="menu cid-sa0VjVewus" once="menu" id="menu2-0">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="/">
                        <img src="views/assets/images/logo2.png" alt="Travel" style="height: 3.8rem;">
                    </a>
                </span>
                
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="/">
                        Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="Travel log">
                        Traveled To
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="Insert into SQL">
                        Add trip Details
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="AboutMe">
                        About Me
                    </a>
                </li>
            </ul>
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-primary display-4" href="https://www.youtube.com/channel/UCQY279iOMrQ0d4RfgablRrw">
                    <span class="btn-icon mbri-video mbr-iconfont mbr-iconfont-btn">
                    </span>
                    Youtube Channel
                </a>
            </div>
        </div>
    </nav>
</section>
<br>
<br>
<br>
<br>
<br>

  <section class="mbr-section form3 cid-sa62p6j5QR" id="form3-0">
<br>
    <div class="container">
        <div class="row justify-content-center">
            <div class="title col-12 col-lg-8">
                <h2 class="align-center pb-2 mbr-fonts-style display-2">
                    Add new Trip Details
                </h2>
                <h3 class="mbr-section-subtitle align-center pb-5 mbr-light mbr-fonts-style display-5">
                    Enter details in the form below
                </h3>
            </div>
        </div>

        <div class="row py-2 justify-content-center">
            <div class="col-12 col-lg-6  col-md-8 " data-form-type="formoid">
                <!---Formbuilder Form--->
                <form action="inserttosql" method="POST" class="mbr-form form-with-styler" data-form-title="Trip Details Form" enctype="multipart/form-data" >
 
             <!--   <h4>Travel Table Details</h4>   -->
               <h3>${msg}</h3>
                <!--<div class="dragArea row">
                        <div class="form-group col" data-for="Travel_id">
                            <input type="text" name="Travel_id" placeholder="Travel id" required="required" class="form-control display-7" id="Travel_id-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Trip_id">
                            <input type="text" name="Trip_id" placeholder="Trip id" required="required" class="form-control display-7" id="Trip_id-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Timeline_id">
                            <input type="text" name="Timeline_id" placeholder="Timeline id" required="required" class="form-control display-7" id="Timeline_id-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="gid">
                            <input type="text" name="gid" placeholder="Gallery id" required="required" class="form-control display-7" id="gid-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Stay_id">
                            <input type="text" name="Stay_id" placeholder="Stay id" required="required" class="form-control display-7" id="Stay_id-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="TT_id">
                            <input type="text" name="TT_id" placeholder="Total Time id" required="required" class="form-control display-7" id="TT_id-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Exp_id">
                            <input type="text" name="Exp_id" placeholder="Expenditure id" required="required" class="form-control display-7" id="Exp_id-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Nfs_id">
                            <input type="text" name="Nfs_id" placeholder="No of stops id" required="required" class="form-control display-7" id="Nfs_id-form3-0">
                        </div>
                    </div>
                    <br> -->
           <h4>Trip Details</h4>         
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Trip_start_date">
                           Trip Start date: <input type="date" name="Trip_start_date" placeholder="Trip start date(dd/mm/yyyy)" required="required" class="form-control display-7" id="Trip_start_date-form3-0">
                        Trip End date: <input type="date" name="Trip_end_date" placeholder="Trip end date(dd/mm/yyyy)" required="required" class="form-control display-7" id="Trip_end_date-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Trip_end_date">
                          
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Trip_source">
                           <input type="text" name="Trip_source" placeholder="Trip source" required="required" class="form-control display-7" id="Trip_source-form3-0">
                          <input type="text" name="Trip_destination" placeholder="Trip destination" required="required" class="form-control display-7" id="Trip_destination-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Trip_destination">
                          </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="No_of_stops">
                            <input type="text" name="No_of_stops" placeholder="No of stops" required="required" class="form-control display-7" id="No_of_stops-form3-0">
                            <input type="text" name="Distance_covered" placeholder="Distance covered(in Km)" required="required" class="form-control display-7" id="Distance_covered-form3-0">
                          <input type="text" name="Fuel_total" placeholder="Fuel total(in ltrs)" required="required" class="form-control display-7" id="Fuel_total-form3-0">
                           <input type="text" name="Total_time" placeholder="Total time(in hrs)" required="required" class="form-control display-7" id="Total_time-form3-0">
                          <input type="text" name="Description" placeholder="Description of Destination" required="required" class="form-control display-7" id="Description-form3-0">
                        </div>
                    </div>
                    <!--                                         <div class="dragArea row">
                        <div class="form-group col" data-for="Distance_covered">
                           </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Fuel_total">
                         </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Total_time">
                         </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Description">
                          </div>
                    </div>  -->
                    
                    <br>
              <h4>Transit Stop Details</h4>      
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Stop_name">
                        <input type="text" name="Stop_name" placeholder="Stop names(Separated by ':')" required="required" class="form-control display-7" id="Stop_name-form3-0">
                    <!--         <input type="text" name="Stop_name" placeholder="Stop number" required="required" class="form-control display-7" id="theValue">
							<input type='button' onclick='addInputBox()' value='Add' class="btn btn-primary display-4"/>

								<div id="myDiv"> </div>	-->
                        </div>	 
                    </div>
                                         <div class="dragArea row">
                        <div class="form-group col" data-for="Stay_location">
                           <input type="text" name="Stay_location" placeholder="Stay location(separated by ':')" required="required" class="form-control display-7" id="Stay_location-form3-0">
                        </div>
                    </div>                    
                                         <div class="dragArea row">
                        <div class="form-group col" data-for="Time">
                           <input type="text" name="Time" placeholder="Time(in hrs)" required="required" class="form-control display-7" id="Time-form3-0">
                        </div>
                    </div>
                    <br>
                    <h4>Expenditure Details</h4>
                    
                                     <div class="dragArea row">
                        <div class="form-group col" data-for="Total_expenditure">
                            <input type="text" name="Total_expenditure" placeholder="Total expenditure(in Rs)" required="required" class="form-control display-7" id="Total_expenditure-form3-0">
                        </div>
                    </div>
                    
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Food_total">
                           <input type="text" name="Food_total" placeholder="Food total(in Rs)" required="required" class="form-control display-7" id="Food_total-form3-0">
                        </div>
                    </div>
                                      <div class="dragArea row">
                        <div class="form-group col" data-for="Stay_total">
                            <input type="text" name="Stay_total" placeholder="Stay total(in Rs)" required="required" class="form-control display-7" id="Stay_total-form3-0">
                        </div>
                    </div>
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Miscellaneous_total">
                           <input type="text" name="Miscellaneous_total" placeholder="Miscellaneous total(in Rs)" required="required" class="form-control display-7" id="Miscellaneous_total-form3-0">
                        </div>
                    </div>
                         
                                        <div class="dragArea row">
                        <div class="form-group col" data-for="Fuel_Price">
                            <input type="text" name="Fuel_price" placeholder="Fuel Price(in Rs)" required="required" class="form-control display-7" id="price-form3-0">
                        </div>
                    </div>
                    <br>
                     <div class="dragArea row">
                     <div class="col-auto input-group-btn">
                            <input type="submit" value="Next" class="btn btn-primary display-4">
                     </div>
                     <div class="col-auto input-group-btn">
                            <input type="reset" class="btn btn-secondary display-4">
                     </div>
                  	</div>
                </form><!---Formbuilder Form--->
            </div>
        </div>
    </div>
</section>


  <section class="engine"><a href="/">Mithun Krishna</a></section>
  <script src="views/assets/web/assets/jquery/jquery.min.js"></script>
  <script src="views/assets/popper/popper.min.js"></script>
  <script src="views/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="views/assets/tether/tether.min.js"></script>
  <script src="views/assets/smoothscroll/smooth-scroll.js"></script>
  <script src="views/assets/theme/js/script.js"></script>
  <script src="views/assets/formoid/formoid.min.js"></script>

</body>
</html>
