
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Basket</title>
    </head>
    <body>
        <jsp:useBean id= "Coffee" class="classes.objectHandler" scope="session"/>
        <jsp:useBean id= "Sugar"  class="classes.objectHandler" scope="session"/>
        <jsp:useBean id= "Water"  class="classes.objectHandler" scope="session"/>
        <jsp:useBean id= "Total" class="classes.objectTotal" scope="session"/>
        <jsp:setProperty name="Coffee" property="name" value="Coffee"/>
        <jsp:setProperty name="Sugar" property="name" value="Sugar"/>
        <jsp:setProperty name="Water" property="name" value="Water"/>
        <jsp:setProperty name="Coffee" property="value" value="18.50" />
        <jsp:setProperty name="Sugar" property="value" value="6.95" />
        <jsp:setProperty name="Water" property="value" value="1.5" />
        <form action="index.jsp">
            <table border="1">                
                <tbody>
                     <tr>
                        <td>Product</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Sum</td>
                    </tr>
                    <tr>
                        <td><jsp:getProperty name="Coffee" property="name"/></td>
                        <td><jsp:getProperty name="Coffee" property="value"/></td>
                        <jsp:setProperty name="Coffee" property="itemValue" param="coffeeQuantity"/>
                        <td><input type="text" name="coffeeQuantity" value="<jsp:getProperty name="Coffee" property="itemValue"/>" /></td>
                        <jsp:setProperty name="Coffee" property="totalValue"/>
                        <td><jsp:getProperty name="Coffee" property="totalValue"/></td>
                    </tr>
                   
                    <tr>
                        <td><jsp:getProperty name="Sugar" property="name"/></td>
                        <td><jsp:getProperty name="Sugar" property="value"/></td>
                        <jsp:setProperty name="Sugar" property="itemValue" param="sugarQuantity"/>
                        <td><input type="text" name="sugarQuantity" value="<jsp:getProperty name="Sugar" property="itemValue"/>" /></td>
                        <jsp:setProperty name="Sugar" property="totalValue"/>
                        <td><jsp:getProperty name="Sugar" property="totalValue"/></td>
                    </tr>
                    <tr>
                        <td><jsp:getProperty name="Water" property="name"/></td>
                        <td><jsp:getProperty name="Water" property="value"/></td>
                        <jsp:setProperty name="Water" property="itemValue" param="waterQuantity"/>
                        <td><input type="text" name="waterQuantity" value="<jsp:getProperty name="Water" property="itemValue"/>" /></td>
                        <jsp:setProperty name="Water" property="totalValue"/>
                        <td><jsp:getProperty name="Water" property="totalValue"/></td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <jsp:setProperty name="Total" property="total" value="${Coffee.totalValue+Sugar.totalValue+Water.totalValue}"/>
                        <td><jsp:getProperty name="Total" property="total"/></td>
                    </tr>
                </tbody>
            </table>
                    <button type="submit" onclick="<jsp:setProperty name="Coffee" property="itemValue" param="coffeeQuantity"/>
                                                <jsp:setProperty name="Sugar" property="itemValue" param="sugarQuantity"/>   
                                                <jsp:setProperty name="Water" property="itemValue" param="waterQuantity"/>"  />Checkout</button>   </form>                                 
                                                <a href="http://evotsis.wordpress.com" target="_blank">Report</a>
                                                <a href="http://https://github.com/evotsis/Project/zipball/master" target="_blank"></a>
    </body>
</html>
