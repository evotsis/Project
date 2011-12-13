<%-- 
    Document   : index
    Created on : 13 Δεκ 2011, 9:19:25 μμ
    Author     : Stathis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.lang.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping basket</title>
    </head>
    <body>
        <%
        double prize1,prize2,prize3;
        String coffeequantity = request.getParameter("coffeequantity");
            if(coffeequantity!=null){
                float quant1 = new Float(coffeequantity);
                prize1 = quant1*18.5;
                session.setAttribute("coffeequantity", coffeequantity);
                session.setAttribute("coffeeprize", prize1);
            }
            else{prize1=0;}
        String sugarquantity = request.getParameter("sugarquantity");
            if(coffeequantity!=null){
                float quant2 = new Float(coffeequantity);
                prize2 = quant2*6.95;
                session.setAttribute("sugarquantity", sugarquantity);
                session.setAttribute("sugarprize", prize2);
            }
            else{prize2=0;}
        String waterquantity = request.getParameter("waterquantity");
            if(waterquantity!=null){
                float quant3 = new Float(waterquantity);
                prize3 = quant3*1.29;
                session.setAttribute("waterquantity", waterquantity);
                session.setAttribute("waterprize", prize3);
               
                
            }
            else{prize3=0;}
       %>
        <h1>Shopping basket</h1>
        <form action="index.jsp">
            <table border="1">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cafe</td>
                        <td>18.5</td>
                        <td><input type="text" name="coffeequantity" value=<%
                        
                         if(session.getAttribute("coffeequantity")==null){
                             session.setAttribute("coffeequantity",0);
                         }   
                       
                                                      
                        out.print(session.getAttribute("coffeequantity"));
                        
                            %>
                                   /></td>
                        <td><%out.print(session.getAttribute("coffeeprize"));%></td>
                    </tr>
                    <tr>
                        <td>Sugar</td>
                        <td>6.95</td>
                        <td><input type="text" name="sugarquantity" value=<%
                        
                            if(session.getAttribute("sugarquantity")==null){
                             session.setAttribute("sugarquantity",0);
                         }   
                       
                                                      
                        out.print(session.getAttribute("sugarquantity"));
                        
                            %>
                            /></td>
                        <td><%out.print(session.getAttribute("sugarprize"));%></td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>1.29</td>
                        <td><input type="text" name="waterquantity" value=<%
                        if(session.getAttribute("waterquantity")==null){
                             session.setAttribute("waterquantity",0);
                         }   
                        
                        out.print(session.getAttribute("waterquantity"));
                        
                            %>
                                   /></td>
                        <td><%out.print(session.getAttribute("waterprize"));%></td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <td></td>
                        <td></td>
                        <td><%=prize1+prize2+prize3%></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Checkout" />
        </form>
      <a href="http://evotsis.wordpress.com" target="_blank">Report</a>
      <a href="http://https://github.com/evotsis/Project/zipball/master" target="_blank">Code</a>
    </body>
</html>
