<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Summernote</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
  <style>
    body {
        width: 1400px;
        height:1200px;
        margin-left:auto;
        margin-right:auto;
    }

    form {
        width: 70%;
        height:100%;
        margin-left:auto;
        margin-right:auto;
        background: rgba(31, 5, 5, 0.075);
    }

    .titleDiv {
       border:1px solid gainsboro;
       width:100%;
        height:5%;
            
        box-sizing: border-box;
    }

    .note-editable {
        height:800px;
    }

    .top1{
            width:100%;
            height:60%;
            box-sizing: border-box;
            margin-top:1%;
    }

    .top1 input {
            width: 80%;
            height:40px;
    }

    label {
            width: 10%;
            height: 70%;
    }

        .note-insert,
        .note-table , 
        .note-view
       {
          display:none;

       }

  </style>
</head>
<body>
<form action="<%= request.getContextPath() %>/insert.qa">
    <div class="titleDiv">
        <div class="top1">
            <label>&nbsp;&nbsp;&nbsp;제목 &nbsp;&nbsp;&nbsp;</label><input type="text" name="title"> <br>
        </div>
        <input type="text" id="HC" name="content" hidden>
    </div>
    <div id="summernote"><p></p></div>
    <button type="submit"></button>

    </form>
    <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });


  </script>

  <script>
      $(document).ready(function() {
          $("button").mouseenter(function(){
            $("#HC").val($(".note-editable").html())
          })
      })
  </script>
</body>
</html>