<%-- 
    Document   : login
    Created on : Oct 18, 2022, 11:42:12 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row col-md-12" style="border-bottom: 1px solid; padding: 10px;">
                <div class="col-md-6">
                    <h1>FPT University Academic Portal</h1>
                </div>
                <table class="col-md-6">
                    <tbody>
                        <tr>
                            <td style="padding-left: 200px;">
                                <strong>FAP mobile app( myFap ) is ready at</strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left:200px;">
                                <a href="https://apps.apple.com/app/id1527723314">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width:120px; height:40px" alt=""/>
                                </a>
                            </td>
                            <td style="padding-right: 100px;">
                                <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                   <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width:120px; height:40px" alt=""/>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br/>
            <br/>
            <div style="border: 1px solid">
                <p style="background-color: #eb9316; color: white; padding: 10px;">
                    <br/>
                <form action="login" method="POST">
                
                    <p style="padding-left: 100px"> Username : <input type="text" name="username" /> </p><br/>
                    <p style="padding-left: 100px"> Password : <input type="password" name="password"/> </p><br/>
                    <p style="padding-left: 300px"><input type="submit" value="Login" />
                </form>

                </p>
            </div>
            <br/>
            <br/>
            <div class="footer" style="padding: 10px; border-top: 1px;">
                <p style="padding-left: 500px">
                    <strong>@Powered by </strong>
                    <a href="http://fpt.edu.vn/" style="font-size: 15px">FPT University</a>|
                    <a href="http://cms.fpt.edu.vn/" style="font-size: 15px">CMS</a>|
                    <a href="http://library.fpt.edu.vn/" style="font-size: 15px">Library</a>|
                    <a href="http://library.books24x7.com/" style="font-size: 15px">books24x7</a>
                </p>

            </div>
        </div>

    </body>
</html>
