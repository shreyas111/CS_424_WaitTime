<%--<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>--%>
<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<%--<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">--%>
    <script>


      <%--  function Show20151()
        {
            $(document).ready(function () {
                $('#<%=button1.ClientID %>').click()
             });
       
         }--%>


     
        /*function getUserAirport()
        {
         var abc = document.getElementById('iworldMap');
         console.log(abc);
         document.getElementById('iworldMap').contentWindow.inWorldMap();
        }*/

        var year='2015';
        var airportCode='SFO';

</script>
<%--</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">--%>

    <%--<%--<iframe src="HTML/USMap.html" width="750" height="400" id="iusmap"></iframe>--%>
    <iframe src="HTML/clock.html" width="500" height="400" id="iclock" name="iclock" onload="populateClock();"></iframe>
    <br />
    <%--<iframe src="HTML/WorldMap.html" width="750" height="350" id="iworldMap" name="iworldMap"></iframe>--%>
    <iframe src="HTML/LineChart.html" width="500" height="400" id="iLineChart" onload="populateLineChart();"></iframe>
    <script src="https://d3js.org/d3.v4.min.js"></script>
    <script src="https://d3js.org/topojson.v1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://npmcdn.com/d3-horizon-chart/build/d3-horizon-chart.min.js"></script>

    <script type="text/javascript">

        function populateClock()
        {
            document.getElementById('iclock').contentWindow.readFile(airportCode, year);
        }

        function populateLineChart()
        {
            //console.log(year);
            //document.getElementById('iLineChart').contentWindow.loadAirportData(airportCode,year);
            document.getElementById('iLineChart').contentWindow.populateAllLines(airportCode, year);

        }

        function populateWorldMap()
        {

        }
        function populateUSMap()
        {

        }
        function populate2015()
        {
            year = '2015';
            document.getElementById('iclock').contentWindow.readFile(airportCode, year);
            //document.getElementById('iLineChart').contentWindow.loadAirportData(airportCode, year);
            document.getElementById('iLineChart').contentWindow.populateAllLines(airportCode, year);

        }
        function populate2014()
        {
            year = '2014';
            document.getElementById('iclock').contentWindow.readFile(airportCode, year);
            //document.getElementById('iLineChart').contentWindow.loadAirportData(airportCode, year);
            document.getElementById('iLineChart').contentWindow.populateAllLines(airportCode, year);

        }
        function populate2013()
        {
            year = '2013';
            document.getElementById('iclock').contentWindow.readFile(airportCode, year);
            //document.getElementById('iLineChart').contentWindow.loadAirportData(airportCode, year);
            document.getElementById('iLineChart').contentWindow.populateAllLines(airportCode, year);

        }
        /*------------------------------------------Line Chart Functions---------------------------------------------------------*/
        function RemoveLineSVG()
        {
            document.getElementById('iLineChart').contentWindow.removeSVG();
        }
        function getAirport()
        {
            document.getElementById('iLineChart').contentWindow.startTimer(airportCode);
        }
        function getAirportCode()
        {
            return airportCode;
        }

    </script>
<%--    <asp:Button ID="button1" runat="server" OnClick="Hello" Text="2015" />
</asp:Content>--%>
