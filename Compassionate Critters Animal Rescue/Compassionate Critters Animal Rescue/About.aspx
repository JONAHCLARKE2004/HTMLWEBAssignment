<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Compassionate_Critters_Animal_Rescue.About" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="CSS/layout.css" rel="stylesheet"/>

    <script type="text/javascript">

        function detectViewPort()
        {
            var w = window.innerWidth
                || document.documentElement.clientWidth
                || document.body.clientWidth;
            document.getElementById('vWidth').innerHTML = w + "px";

        }


    </script>


    <title>Compassionate Critters Animal Rescue - About</title>
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

        #about-section {
            margin-top: 2em;
        }

        #about-section p {
            line-height: 1.6;
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
            width: 26%;
            height: 347px;
        }
        .auto-style2 {
            width: 38%;
            height: 335px;
        }
    </style>
</head>
<body>
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
        <div id="col1">
            <h2>&nbsp;</h2>
            <h2>About the Charity</h2>
            <p>
                "Compassionate Critters Animal Rescue" is a well-respected animal rescue charity with a strong commitment to animal welfare. They operate in a local community and have been actively involved in rescuing and rehoming abandoned, abused, and neglected animals for several years.
            </p>
            <p>
                The charity is dedicated to the rescue, rehabilitation, and responsible pet ownership. Their mission is to provide a safe haven for animals in need, offering them a second chance for a loving and caring home. The charity believes in the importance of promoting responsible pet ownership through education and outreach programs.
            </p>
            <p>
                "Compassionate Critters Animal Rescue" relies on the generosity of donors, volunteers, and the support of the community to carry out their mission. They are committed to creating a world where every animal is treated with compassion and kindness.
            </p>

            

            <img src="https://th.bing.com/th/id/R.43d40033d7d5dbf235d5f74cd4c0ead4?rik=iBc282%2b63S0Zng&amp;pid=ImgRaw&amp;r=0"  alt="Cat" id="imgCat" class="auto-style2">

        </div>


        <div id="col2">
            <h2>&nbsp;</h2>
            <h2>More on the Charity</h2>
            <p>
                "Compassionate Critters Animal Rescue" is a well-respected animal rescue charity with a strong commitment to animal welfare. They operate in a local community and have been actively involved in rescuing and rehoming abandoned, abused, and neglected animals for several years.
            </p>
            <p>
                The charity is dedicated to the rescue, rehabilitation, and responsible pet ownership. Their mission is to provide a safe haven for animals in need, offering them a second chance for a loving and caring home. The charity believes in the importance of promoting responsible pet ownership through education and outreach programs.
            </p>
            <p>
                "Compassionate Critters Animal Rescue" relies on the generosity of donors, volunteers, and the support of the community to carry out their mission. They are committed to creating a world where every animal is treated with compassion and kindness.
            </p>

              

            <img src="https://th.bing.com/th/id/OIP.TvJKk8iSpTfBKEQ702YzPAAAAA?rs=1&amp;pid=ImgDetMain" alt="Dog" id="imgDog" class="auto-style1">

       
        </div>

    </main>

    <footer>
        <p>&copy; 2023 Compassionate Critters Animal Rescue</p>
    </footer>
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
    <p>
        &nbsp;</p>
</body>
</html>