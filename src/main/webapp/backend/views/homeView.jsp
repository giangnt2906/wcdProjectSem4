<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/25/2020
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>

    <h3>Home Page</h3>
    <h3>Charts</h3>

    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>

    <script type="text/javascript">

        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            // Create the data table.
            var data = google.visualization.arrayToDataTable([
                ['Category', 'Products'],
                <c:forEach var="item" items="${requestScope.numberOfProductsInCategory}">
                ['${item.name}', ${item.numberOfProducts}],
                </c:forEach>
            ]);

            // Set chart options
            var options = {'title':'Number of Products in each Category',
                'width':720,
                'height':480};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
</body>
</html>
