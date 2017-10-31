<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Registration Form</title>
</head>
 

<body >
    <form id="form1" runat="server">
    <div class="sidebar">
         
        <style>
           
            
            body
            {
                background-color:white;
                font-family:Arial, Helvetica, sans-serif;
                font-size:1em;
                color: black;
                background-color:aqua;
                margin-left: 192px;
                margin-right: 172px;
                margin-top: 89px;
            }
            p{
                text-align:match-parent;
                color:blue;
                
            }
            .sidebar p
            {
                text-align:left;
                border-bottom-left-radius:inherit;
                border-bottom-right-radius:inherit;
                border-style:double;
                border-color:black;
                background-color:white; 
                color: blue;
                        width:auto;
                        background-size:auto;              
                        background-color:white;
            }
            
           
           
           
      .txtCSS
        {
            background: white;
            border: 1px solid #ffa853;
            border-radius: 5px;
            box-shadow: 0 0 5px 3px #ffa853;
            color: #ff0000;
            width: 165px;
            outline: thick;
        }
     
        
        #txtConFar, #txtConCenti
        {
            background: white;
            border: 1px double #DDD;
            border-radius: 5px;
            box-shadow: 0 0 5px #333;
            color: #666;
            width: 165px;
            outline: thick;
        }
        
        .buttonCSS
        {
            padding: 5px;
            background-color: #000;
            border: 1px solid #DDD;
            color: #DDD;
            text-decoration: wavy;
        }
    </style>

       <script type ="text/javascript">

           function Submitfunction()
           {
           
               
               if (document.getElementById('FirstName').value != "") {
                   var chararray = document.getElementById('FirstName').value;
                   for (var i = 0; i < chararray.length; i++) {

                       if (!(chararray.charCodeAt(i) > 64 && chararray.charCodeAt(i) <91)&&!(chararray.charCodeAt(i) > 96 && chararray.charCodeAt(i) <103) {
                           alert("Invalid First Name !");

                       }
                   }

               }
               if (document.getElementById('LastName').value != "") {
                   var chararray = document.getElementById('LastName').value;
                   for (var i = 0; i < chararray.length; i++) {

                       if (!(chararray.charCodeAt(i) > 64 && chararray.charCodeAt(i) <91)&&!(chararray.charCodeAt(i) > 96 && chararray.charCodeAt(i) <103) {
                           alert("Invalid Last Name !");

                       }
                   }

               }
               if (document.getElementById('FatherFirst').value != "") {
                   var chararray = document.getElementById('FatherFirst').value;
                   for (var i = 0; i < chararray.length; i++) {

                       if (!(chararray.charCodeAt(i) > 64 && chararray.charCodeAt(i) <91)&&!(chararray.charCodeAt(i) > 96 && chararray.charCodeAt(i) <103) {
                           alert("Invalid Father First Name !");

                       }
                   }

               }
               if (document.getElementById('FatherLast').value != "") {
                   var chararray = document.getElementById('FatherLast').value;
                   for (var i = 0; i < chararray.length; i++) {

                       if (!(chararray.charCodeAt(i) > 64 && chararray.charCodeAt(i) <91)&&!(chararray.charCodeAt(i) > 96 && chararray.charCodeAt(i) <103) {
                           alert("Invalid Father Last Name !");

                       }
                   }

               }
               if (document.getElementById('CNIC').value != "") {
                   var chararray = document.getElementById('CNIC').value;
                   for (var i = 0; i < chararray.length; i++) {

                       if (chararray.charCodeAt(i) < 48 || chararray.charCodeAt(i) > 57) {
                           alert("Invalid CNIC Number !");

                       }
                   }

               }
               if (document.getElementById('Phone').value != "") {
                   var str = document.getElementById('Phone').value;
                   for (var i = 0; i < str.length; i++) {

                       if (str.charCodeAt(i) < 48 || str.charCodeAt(i) > 57) {
                           alert("Invalid Phone Number !");

                       }
                   }

               }

               if (document.getElementById('DOB').value != "") {
                   var str = document.getElementById('DOB').value;
                   for (var i = 0; i < str.length; i++) {
                       if (str.length != 6) {
                           alert("Invalid Length of date of birth please follow pattern provided !");
                           document.getElementById('DOB').value = "";
                       }
                           
                       if (str.charCodeAt(i) < 48 || str.charCodeAt(i) > 57) {
                           alert("Invalid Date of Birth !");

                       }
                   }

               }
               if (document.getElementById('DOV').value != "") {
                   var str = document.getElementById('DOV').value;
                   for (var i = 0; i < str.length; i++) {
                       if (str.length != 6) {
                           alert("Invalid Length of date of visit please follow pattern provided !");
                           document.getElementById('DOV').vlaue = "";
                       }
                       if (str.charCodeAt(i) < 48 || str.charCodeAt(i) > 57) {
                           alert("Invalid date of visit !");

                       }
                   }

               }

             if (document.getElementById('ddlTypeVisit').valueOf == "")
                {
                    alert( "Please Select a type of visit !");
                    
                }
             if (document.getElementById('Phone').value != "" && document.getElementById('FirstName').value != "" && document.getElementById('LastName').value != "" && document.getElementById('DOB').value != "" && document.getElementById('DOV').value != "" && document.getElementById('FatherFirst').value != "" && document.getElementById('FatherLast').value != "" && document.getElementById('ddlTypeVisit').value != "") {
                 alert("Form Submitted Successfully!");
                 Pleasedo();
             }
                
            }
            function Resalldata()
            {

                document.getElementById('Phone').value = "";
                document.getElementById('ADD').value = "";
                document.getElementById('Email').value = "";
                document.getElementById('FatherFirst').value = "";
                document.getElementById('FatherLast').value = "";
                document.getElementById('FirstName').value = "";
                document.getElementById('LastName').value = "";
                document.getElementById('DOB').value = "";
                document.getElementById('DOV').value = "";
                document.getElementById('ddlTypeVisit').value = "";
                document.getElementById('rdMale').value = "";
                document.getElementById('rdFemale').value = "";
                document.getElementById('R').value = "";
            }
        </script>





             
     <p class="sidebar">
        
        <h1 style="color:black" > Patient Registration Form</h1>
         <br/>
         Welcome to online registration form . Please enter the required information.
         <br />
        <br/>
        
        Gender  
        
        <br/>
        
        <asp:RadioButton ID="rdMale" GroupName="Gender" runat="server" />
        &nbsp;
        Male
        <br /><asp:RadioButton ID="rdFemale" GroupName="Gender" runat="server" />
        &nbsp;
        Female
        <br />
        <br/>
       
        Name&nbsp;<span style="color:red">*</span> 
         <br/>
     
        
        <asp:TextBox ID="FirstName"  runat="server" Width="136px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="LastName"  runat="server" Width="138px"></asp:TextBox>
    

        <br />
        <small>First</small> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <small>&nbsp;Last</small>
        <br/>
        <br />
        FatherName&nbsp;<span style="color:red">*</span> 
        <br/>
        <asp:TextBox ID="FatherFirst"  runat="server" Width="139px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="FatherLast"  runat="server" Width="161px"></asp:TextBox>
        <br />
       <small> First</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <small>&nbsp;Last</small>
        <br/> 
        <br/>   
         CNIC&nbsp;<span style="color:red">*</span> 
        <br/>
        <asp:TextBox ID="CNIC" runat="server" Width="199px"></asp:TextBox> &nbsp;&nbsp;e.g (3X2X18X7X4X2X)
        <br/>
        <br/>
         Phone&nbsp;<span style="color:red">*</span> 
        <br/>
         <asp:TextBox ID="Phone" runat="server" Width="196px"></asp:TextBox>
        <br/>
        <br/>
        Email
        <br/>
         <asp:TextBox ID="Email" runat="server" Width="194px"></asp:TextBox>
        <br/>
        <br/>
        Address
        <br/>
         <asp:TextBox ID="ADD" runat="server" Width="193px"></asp:TextBox>
        <br/>
        <br/>
        Date Of Birth &nbsp;<span style="color:red">*</span> 
        <br/>
         <asp:TextBox ID="DOB" runat="server" Width="160px"></asp:TextBox>
         &nbsp;&nbsp;
         &nbsp;&nbsp;e.g (ddmmyy)
        <br/>
        <br/>
         Date of Visit&nbsp;<span style="color:red">*</span>  <br/>
         <asp:TextBox ID="DOV" runat="server" Width="157px"></asp:TextBox>
         &nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;e.g (ddmmyy)
        <br/>
        <br/>
        Type of Visit &nbsp;<span style="color:red">*</span> 
        <br />
        <asp:DropDownList ID="ddlTypeVisit" runat="server" AutoPostBack="True" Height="16px" Width="170px">
        <asp:ListItem Text="        -----Select-----" Value="0"></asp:ListItem>
        <asp:ListItem Text="Child Specialist" Value="CS"></asp:ListItem>
        <asp:ListItem Text="ENT" Value="ENT"></asp:ListItem>
        <asp:ListItem Text="Gyanecologist" Value="GY"></asp:ListItem>
        <asp:ListItem Text="Orthopedic" Value="OR"></asp:ListItem>
        <asp:ListItem Text="Heart Speacialist" Value="HS"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br/>
        
        &nbsp;
        <asp:Button ID="Submit" CssClass="buttonCSS" OnClientClick="javascript:Submitfunction();" Text=" Submit " runat="server" />
        &nbsp;
        &nbsp;
        <asp:Button ID="Reset" CssClass="buttonCSS" OnClientClick="javascript:Resalldata();" Text=" Reset " runat="server" />
        
          
    </p>
         </div>
    </form>
</body>
</html>
