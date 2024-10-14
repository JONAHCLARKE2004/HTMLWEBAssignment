<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adoption.aspx.cs" Inherits="Compassionate_Critters_Animal_Rescue.Adoption" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compassionate Critters Animal Rescue</title>

    <script>
        function updateDateTime() {
            var now = new Date();
            var datetimeElement = document.getElementById("datetime");
            datetimeElement.innerHTML = now.toLocaleString();
        }

        setInterval(updateDateTime, 1000);
        updateDateTime(); // Initial call to display date and time



        function showInquiryForm(animalName, animalType) {
            const formContainer = document.getElementById('inquiry-form');
            formContainer.style.display = 'block';

            updateImage(animalType);
        }


        function search() {
            var searchInput = document.getElementById('search-input').value.toLowerCase();
            var profiles = document.getElementsByClassName('adoption-profile');
            var gvAvailablePets = document.getElementById('gvAvailablePets');
            var gridRows = gvAvailablePets.getElementsByTagName('tr');

            for (var i = 1; i < gridRows.length; i++) {
                var gridRow = gridRows[i];
                var breed = gridRow.cells[1].innerText.toLowerCase();
                var species = gridRow.cells[2].innerText.toLowerCase();
                var name = gridRow.cells[3].innerText.toLowerCase();

                if (breed.includes(searchInput) || species.includes(searchInput) || name.includes(searchInput)) {
                    gridRow.style.display = '';
                } else {
                    gridRow.style.display = 'none';
                }
            }

            for (var i = 0; i < profiles.length; i++) {
                var profile = profiles[i];
                var breed = profile.querySelector('.breed').innerText.toLowerCase();
                var species = profile.getAttribute('data-animal-type').toLowerCase();
                var animalName = profile.querySelector('h3').innerText.toLowerCase();

                if (breed.includes(searchInput) || species.includes(searchInput) || animalName.includes(searchInput)) {
                    profile.style.display = 'block';
                } else {
                    profile.style.display = 'none';
                }
            }
        }


        document.getElementById('search-input').addEventListener('input', search);



        filter();
    </script>

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
            margin-right: 1em; 
        }

        #login-section {
            flex: 1;
            text-align: right;
        }

        #adoption {
            margin-top: 2em;
        }

        #adoption .adoption-profile {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 1em;
            margin-bottom: 1em;
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
            bottom: -2px;
            width: 100%;
            left: -35px;
        }
    </style>

</head>
    <body>
    <form id="form1" runat="server">
        <header>
            <h3>Compassionate Critters Animal Rescue</h3>
        </header>

        <nav>
            <%--<asp:DropDownList ID="ddlPets" runat="server" OnSelectedIndexChanged="ddlPets_SelectedIndexChanged2">
            <asp:ListItem>Cats</asp:ListItem>
            <asp:ListItem>Dogs</asp:ListItem>
            <asp:ListItem>Not Filtered</asp:ListItem>
            </asp:DropDownList>--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlTypes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>All</asp:ListItem>
                <asp:ListItem>dog</asp:ListItem>
                <asp:ListItem>cat</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<a href="Home.aspx">Home</a>
            <a href="About.aspx">About</a>
            <a href="Adoption.aspx">Adoption</a>
            <a href="News.aspx">News</a>
            <a href="Contact.aspx">Contact</a>
            <input type="text" id="search-input" placeholder="Search for a species or breed">
            <button onclick="search()">Search</button>
        </nav>

        <main>
            <div class="container">
                <div id="date-time">
                    <h2>Date and Time</h2>
                    <p id="datetime">Loading...</p>
                </div>

                <div id="login-section">
                    <h2>
                        <asp:HyperLink ID="hylPage1" runat="server" href="Home.aspx">Log In</asp:HyperLink>
                    </h2>
                </div>
            </div>

            <div id="adoption">
                <h2>Adoptions Available</h2>
               
                <asp:GridView ID="gvAvailablePets" runat="server" OnSelectedIndexChanged="gvAvailablePets_SelectedIndexChanged" AutoGenerateColumns="False">
                <Columns>
                <asp:ButtonField Text="Select" CommandName="Select" />
                
                    <asp:BoundField DataField="Breed" HeaderText="Breed" />
                    <asp:BoundField DataField="Species" HeaderText="Species" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                
                </Columns>
                </asp:GridView>

                <h2>&nbsp;</h2>
                <h2>Adoption details</h2>

                <div class="adoption-profile" data-animal-type="dog">
                    <asp:Image ID="imgAdoptions" runat="server" Height="184px" Width="271px" />
                &nbsp;<h3>
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                    </h3>
                    <p>Description of the animal. </p>
                    <button onclick="showInquiryForm('Dog Name')">Inquire</button>
                </div>

                <div id="inquiry-form" style="display: none;">
                    <h3>Inquire about Adoption</h3>
                    <!-- Form fields for inquiry -->
                    <label for="txtInquiryMessage">Message:</label>
                    <textarea id="txtInquiryMessage" name="message" required class="auto-style1"></textarea>
                    <br />
                    <br />
                    <label for="txtInquiryUpload">Upload Attachment:</label>
                    <input type="file" id="txtInquiryUpload" name="upload">
                    <br />
                    <br />
                    <button type="submit">Submit</button>
                </div>
            </div>
        </main>

        
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

      <footer>
            <p>&copy; 2023 Compassionate Critters Animal Rescue</p>
        </footer>

        
    </body>
</html>