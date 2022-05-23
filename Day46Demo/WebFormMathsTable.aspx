<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMathsTable.aspx.cs" Inherits="Day46Demo.WebFormMathsTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">        
        <div>
            <table>
                <%
                    //int num = 200;
                    var numText = Request.QueryString["num"];
                    if (string.IsNullOrEmpty(numText))
                    {
                        Response.Write("<div style=\"color: red\">Page Parameter num not found</div>");
                    }
                    else
                    {
                        int num = int.Parse(numText);

                        Response.Write($"<h1>Maths Table for {num}</h1>");

                        for (int i = 1; i <= 10; i++)
                        {
                            Response.Write("<tr>");
                            Response.Write($"<td>{num:N0}</td><td>x</td><td style=\"text-align:right\">{i}</td><td>=</td><td style=\"text-align:right\">{num * i:N0}</td>");
                            Response.Write("</tr>");
                        }
                    }
                %>
            </table>
            <hr />
            <h1>Maths Table for 7</h1>
            <table>
                <tr>
                    <td>7</td><td>x</td><td>1</td><td>=</td><td>7</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>2</td><td>=</td><td>14</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>3</td><td>=</td><td>21</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>4</td><td>=</td><td>28</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>5</td><td>=</td><td>35</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>6</td><td>=</td><td>42</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>7</td><td>=</td><td>49</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>8</td><td>=</td><td>56</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>9</td><td>=</td><td>63</td>
                </tr>
                <tr>
                    <td>7</td><td>x</td><td>10</td><td>=</td><td>70</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
