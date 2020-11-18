 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		function goback(){
		window.history.back();
			}
  </script>

</head>
<body>
  <section class="mbr-section form3 cid-sa62p6j5QR" id="form3-0">
<br>
    <div class="container">
        <div class="row justify-content-center">
            <div class="title col-12 col-lg-8">
                <h2 class="align-center pb-2 mbr-fonts-style display-2">
                   Upload Multiple Files for Trip ID: ${T_id}
                </h2>
                <h3 class="mbr-section-subtitle align-center pb-5 mbr-light mbr-fonts-style display-5">
                    Enter details in the form below
                </h3>
            </div>
        </div>

        <div class="row py-2 justify-content-center">
            <div class="col-12 col-lg-5  col-md-8 " data-form-type="formoid">
                <!---Formbuilder Form--->
                            
           <form id="uploadFiles" name="uploadFiles" method="post" action="/uploadFiles/${T_id}" encType="multipart/form-data">
       			
       				<div class="dragArea row">
                     <div class="col-auto input-group-btn">
                     <input type="file" name="files" multiple required>
                            <input type="submit" class="btn btn-primary display-4">
                            <a href="/" class="btn btn-primary display-4">Home</a> 
                            
                     </div>
                     <div class="col-auto input-group-btn" align="right">
                            <input type="button" value="Back" onclick=goback() class="btn btn-secondary display-4">
                    		<a href="/getall_img" class="btn btn-secondary display-4">Get Images</a> 
                     </div>
                  	</div>
     </form>
                   
 
                     
                </form><!---Formbuilder Form--->
                <div>
     <h3></h3>

   </div>
   
 
            </div>
        </div>
    </div>
</section>

   <div>
  <!--   <h3>List of Documents</h3> --> 
     <table border="1">
                <tr>
        
         <c:forEach var="doc" items="${doc}">
       <!-- <td> ${doc.id} </td>
           <td> ${doc.docName} </td>
           <td><a href="/downloadFile/${docs.id}">Download</a></td> -->
          <td> ${doc.docName} <img width="100" height="100" src="getStudentPhoto/<c:out value='${doc.id}'/>" alt="${doc.docName}" /></td>
           </c:forEach>
         </tr>
     </table>
   </div>
    
   
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