<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Compassionate_Critters_Animal_Rescue.Contact" %>

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

    <title>Compassionate Critters Animal Rescue - Contact</title>
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

        #contact-section {
            margin-top: 2em;
        }

        #contact-form {
            max-width: 600px;
            margin: 0 auto;
        }

        #contact-form label {
            display: block;
            margin-bottom: 0.5em;
        }

        #contact-form input,
        #contact-form textarea,
        #contact-form button,
        #contact-form select {
            width: 100%;
            padding: 0.5em;
            margin-bottom: 1em;
            box-sizing: border-box;
        }

        #contact-form button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 0.7em;
            cursor: pointer;
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
        .auto-style1 {
            height: 34px;
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
        <div id="contact-section">
            <h2>Contact Information</h2>

            <div id="contact-form">
                    <label for="name">Name:&nbsp;&nbsp; 
                    </label>
                    <input type="text" id="txtName" name="name" required>

                    <label for="email">
                    <br />
                    Email:</label><label for="message" id="lblMessage"><input type="email" id="txtEmail" name="email" required>

                    <br />
                    <br />

                    Phone Number:<br />
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Message:</label>
                    <textarea id="txtMessage" name="message" required class="auto-style1"></textarea>

                    <label for="upload" id="lblUpload">Upload Attachment:</label>
                    <input type="file" id="txtUpload" name="upload">

                    <button type="submit">Submit</button>
            </div>

            <p>For general inquiries, please contact us at:</p>
            <p>Phone: 123-456-7890</p>
            <p>Email: info@compassionatecritters.org</p>

            <h3>Get Involved</h3>
            <p>Interested in volunteering or making a donation? Contact us to learn more about how you can get involved with our activities and support our mission.</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </main>

    <footer>
        <p>&copy; 2023 Compassionate Critters Animal Rescue</p>
    </footer>
    </form>
</body>
</html>
