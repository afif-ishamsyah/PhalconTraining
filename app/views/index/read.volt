<!DOCTYPE html>
<html>

<head>
    
    <title>Customer Management</title>
    

    <style>
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            
            td, th {
              border: 1px solid #dddddd;
              text-align: left;
              padding: 8px;
            }
            
            tr:nth-child(even) {
              background-color: #dddddd;
            }

            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }

            .button2 {background-color: #008CBA;} /* Blue */
            .button3 {background-color: #f44336;} /* Red */ 
            .button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
            .button5 {background-color: #555555;} /* Black */

            h1 {
                color: #999999;
                font-family: arial, sans-serif;
                font-weight: bold;
                margin-top: 0px;
                margin-bottom: 1px;
            }
    </style>
  
</head>

<body>
    <div class="container">
               
        <h1>Customer Management </h1> <br>

        <form>
            <input class="button" type="button" value="Add Customer" onclick="window.location.href='{{ url.getBaseUri() }}/form'" />
        </form><br>

        <table class="table">
            <thead>
            <tr>
                <th>Customer ID</th>
                <th>Customer Name</th>
                <th>Customer Email</th>
                <th>Customer Phone</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            {% for res in read %}
            {%  set custid = res['customerID'] %}
            {%  set custname = res['customerName'] %}
            {%  set custemail = res['customerEmail'] %}
            {%  set custphone = res['customerPhone'] %}
            <tr>
            <td>{{ custid }}</td>
            <td>{{ custname }}</td>
            <td>{{ custemail }}</td>
            <td>{{ custphone }}</td>
            <td><form>
                <input class="button button2" type="button" value="Update" onclick="window.location.href='{{ url.getBaseUri() }}/updateform/{{ custid }}'" />
            </form></td>
            <td><form>
                <input class="button button3" type="button" value="Delete" onclick="window.location.href='{{ url.getBaseUri() }}/delete/{{ custid }}'" />
            </form></td>          
            </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>
    
</body>
</html>
