<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Compassionate_Critters_Animal_Rescue.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/> 

    <link href="CSS/layout.css" rel="stylesheet" />

    <script type="text/javascript">

        function detectViewPort() {
            var w = window.innerWidth
                || document.documentElement.clientWidth
                || document.body.clientWidth;
            document.getElementById('vWidth').innerHTML = w + "px";

        }

        document.addEventListener("DOMContentLoaded", function () {
            // Function to toggle password visibility
            function togglePasswordVisibility(checkbox, passwordField) {
                passwordField.type = checkbox.checked ? "text" : "password";
            }

           
            var showLoginPasswordCheckbox = document.getElementById("<%= ckbShowLoginPassword.ClientID %>");
            var loginPasswordField = document.getElementById("<%= txbLoginPassword.ClientID %>");
      

         
            showLoginPasswordCheckbox.addEventListener("change", function () {
                togglePasswordVisibility(showLoginPasswordCheckbox, loginPasswordField);
            });

          
            togglePasswordVisibility(showLoginPasswordCheckbox, loginPasswordField);
            
        });

    </script>

    <title>Compassionate Critters Animal Rescue</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1em;
        }

        nav {
            background-color: #444;
            padding: 0.5em;
            text-align: center;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            margin: 0 1em;
        }

        main {
            padding: 2em;
        }

        .container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        #date-time {
            flex: 1;

        }

        #login-section {
            flex: 1;
            text-align: left;
        }

        #calendar {
            margin-top: 2em;
        }

        #images {
            margin-top: 2em;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1em;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        
        .hidden-password {
            display: none;
        }


        .login-column {
            width: 48%; 
            float: left;
        }

       


        #login-section {
            flex: none; 
        }



        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 10px;
        }

        .gallery img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            cursor: pointer;
            float: left;
        }

        .auto-style1 {
            text-align: left;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <h1>Compassionate Critters Animal Rescue</h1>
    </header>

    <nav>
        <a href="Home.aspx">Home</a>
        <a href="About.aspx">About</a>
        <a href="Adoption.aspx">Adoption</a>
        <a href="News.aspx">News</a>
        <a href="Contact.aspx">Contact</a>
    </nav>

    <main>
        <div class="container">
            <div id="date-time">
                <br />
                Current User:
                <asp:Label ID="lblCurrentUser" runat="server"></asp:Label>
                <br />
    <asp:Image ID="imgUploadedProfileImage" runat="server" Height="61px" Visible="false" Width="77px" />


                <br />
                <h2>Date and Time </h2>
                <p id="datetime">Loading...</p>
                <p>&nbsp;</p>
            </div>

           <!-- --> <div id="login-section" class="auto-style1">
                <h2 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
                <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
&nbsp;<asp:TextBox ID="txbLoginUsername" runat="server" OnTextChanged="txbLoginUsername_TextChanged"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvLogin" runat="server" ControlToValidate="txbLoginUsername" ErrorMessage="* Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;
                    </p>
                <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txbLoginPassword" runat="server" OnTextChanged="txbLoginPassword_TextChanged"></asp:TextBox>
                    <asp:Button ID="btnLogin" runat="server" Text="login" OnClick="btnLogin_Click" />
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txbLoginPassword" ErrorMessage="* Enter Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    
                    &nbsp;&nbsp;&nbsp;
                </p>
                <p class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Show Password:
                    <asp:CheckBox ID="ckbShowLoginPassword" runat="server" OnCheckedChanged="ckbShowLoginPassword_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

<!-- --> 
                <p class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload a Profile Image: 
                    <asp:FileUpload ID="fulProfileImage" runat="server" />
                    <asp:Button ID="btnProfileImageUpload" runat="server" OnClick="btnProfileImageUpload_Click" Text="Upload" />
                </p>

                 


            </div>
        </div>

        <div id="calendar">
            <h2>&nbsp;</h2>
            <h2>Welcome To The Home Page</h2>
            <p> At Compassionate Critters Animal Rescue, our passion for animal welfare drives our unwavering commitment to making a difference in the lives of those who cannot speak for themselves. </p>
            <p> As a well-respected animal rescue charity, we have been at the forefront of rescuing and rehoming abandoned, abused, and neglected animals in our local community for several years. &nbsp;</p>
            <p>&nbsp;</p>
        </div>

        <!-- Image Gallery -->
        <div id="images">
              <h2 style="text-align: left">Images</h2>
           

            <div class="gallery">
  <a href="Adoption.aspx" target="_blank"><img src="https://th.bing.com/th/id/R.5ce7ed375498b2dd3906797098ab609d?rik=UUHNMl454ODPfw&amp;riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fW%2f5%2f5%2fy%2fU%2fl%2fblue-dog-dancing-hi.png&amp;ehk=TnhBACu96hu5aNzPJZpYV2f5Wpj%2fKt37geCBaJ%2bnQkU%3d&amp;risl=&amp;pid=ImgRaw&amp;r=0" alt="Image 1"/></a>
  <a href="Adoption.aspx" target="_blank"><img src="https://th.bing.com/th/id/OIP.ZCGVSapd2aFRUnimZMZOWwHaHa?rs=1&amp;pid=ImgDetMain" alt="Image 2"/></a>
  <a href="Adoption.aspx" target="_blank"><img src="https://th.bing.com/th/id/OIP.TvJKk8iSpTfBKEQ702YzPAAAAA?rs=1&amp;pid=ImgDetMain" alt="Image 3"/></a>

</div> 



        </div>


     



    </main>

    <footer>
        <p>&copy; 2023 Compassionate Critters Animal Rescue</p>
    </footer>

    <script>
        function updateDateTime() {
            var now = new Date();
            var datetimeElement = document.getElementById("datetime");
            datetimeElement.innerHTML = now.toLocaleString();
        }

        setInterval(updateDateTime, 1000);
        updateDateTime(); // Initial call to display date and time
    </script>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
