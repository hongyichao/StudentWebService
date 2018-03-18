<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentServiceClient.aspx.cs" Inherits="StudentServiceClient.StudentServiceClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="button" onclick="GetStudent();" value="Get Student" /> 
        <div id="studentInfo">
            
        </div>
    </div>
    </form>
    <script type="text/javascript" src="Scripts/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="Scripts/json2.min.js"></script>
    <script type="text/javascript">
        function GetStudent() {
            $.ajax({
                type: "POST",
                url: "http://localhost:54563/StudentDetailWebService.asmx/GetStudentDetail",
                dataType: "text",
                crossDomain: true,
                success: function (data) {
                    $('#studentInfo').html(data);
                }
            });
        }
    </script>
</body>
</html>
