<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Compassionate_Critters_Animal_Rescue.News" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="CSS/layout.css" rel="stylesheet" />

    <script type="text/javascript">

        function detectViewPort() {
            var w = window.innerWidth
                || document.documentElement.clientWidth
                || document.body.clientWidth;
            document.getElementById('vWidth').innerHTML = w + "px";

        }

        
        

    </script>

    <title>Compassionate Critters Animal Rescue - News</title>
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

        #news-section {
            margin-top: 2em;
        }

        #news-section article {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 1em;
            margin-bottom: 1em;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1em;
            position: fixed;
            bottom: -1px;
            width: 100%;
            left: -43px;
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
        <div id="news-section">
            <h2>News and Event Updates</h2>

            <article>
                <h3>Upcoming Adoption Event</h3>
                <p>Date: March 15, 2024</p>
                <p>Join us for an adoption event where you can meet our animals looking for forever homes.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
            </article>

            <article>
                <h3>Charity Fundraising Gala</h3>
                <p>Date: April 5, 2024</p>
                <p>Our annual fundraising gala is approaching! Purchase your tickets now to support our mission.</p>
            </article>

            <h2>&nbsp;</h2>
            <h2>Event Calander</h2>
            <p>
                <asp:Calendar ID="calEvent" runat="server" OnClientDayClick="dayClickHandler" ViewStateMode="Disabled" OnSelectionChanged="calEvent_SelectionChanged"></asp:Calendar>
            </p>
            <p>
                <asp:Label ID="lblDisplayEvent" runat="server"></asp:Label>
&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;</p>
            <h2>
                Community Chat Room</h2>
            <p>
                <asp:TextBox ID="txtBlog" runat="server" Height="104px" OnTextChanged="txtBlog_TextChanged" ReadOnly="True" TextMode="MultiLine" Width="321px"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:TextBox ID="txtEntry" runat="server" Width="267px"></asp:TextBox>
                <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" />
            </p>
            <p>
                Name:<asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtName" ErrorMessage="* Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
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

        </div>
    </main>

    <footer>
        <p>&copy; 2023 Compassionate Critters Animal Rescue</p>
    </footer>
    </form>
</body>
</html>