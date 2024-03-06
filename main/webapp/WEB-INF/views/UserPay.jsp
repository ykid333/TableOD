<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
  <body>
    <button onclick="openPopUp()">팝업</button>
    <script>
      let childPop;
      function openPopUp() {
        childPop = window.open(
          "payResult",
          "popUp",
          "width=400,height=500"
        );
      }
      window.addEventListener("unload", function () {
        childPop.close();
      });
      function userPayClose(){
    	  var ret = window.open("about:blank", "_self");
    	  ret.close();
      }
    </script>
  </body>
</html>