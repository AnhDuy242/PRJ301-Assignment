<%-- 
    Document   : Attendance
    Created on : Oct 31, 2022, 3:30:06 PM
    Author     : ngoan
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Taking Attendance</title>
        <style>
            h4 {
                padding-left: 10px;
            }
            .th {
                border: 1px solid;
                padding: 10px 0px 10px 20px;
            }
            .td-main {
                height: 100px;
                border: 1px solid;
                padding-left: 20px;
            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row" style="padding:10px">
                <div class="col-md-8">
                    <h1><span>FPT University Academic Portal</span></h1>
                </div>
                <div class="col-md-4">
                    <table>
                        <tbody>
                            <tr>
                                <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>
                            </tr>
                            <tr>
                            <td><a href="https://apps.apple.com/app/id1527723314">
                                <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store"></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store"></a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="row" style="padding: 10px 0px 10px 10px; background-color: #F5F5F5;">
                <span>
                    <a href="TimetableController?lid=${ses.lecturer.id}" style="font-size: 15px">Home</a>&nbsp;|&nbsp;
                    <a href="" style="font-size: 15px">Check Attendance</a>&nbsp;|&nbsp;
                    <a href="TimetableController?lid=${ses.lecturer.id}" style="font-size: 15px">Time Table</a>
                </span>
            </div>
            <br/>
            <br/>
            <div class="row header" style="padding-left: 50px">
                <h4>Take Attendance for Group: <strong>${requestScope.ses.group.name}</strong></h4>
                <h4>Lecturer: <strong>${requestScope.ses.lecturer.name}</strong></h4>
                <h4>Date: <strong>${requestScope.ses.date}</strong> - slot <strong>${requestScope.ses.slot.id}</strong> (${requestScope.ses.slot.description})</h4>
                <h4>Subject: <strong>${requestScope.ses.group.subject.name}</strong></h4><br/>
                <h4>Room: <strong>${requestScope.ses.room.name}</strong></h4><br/>
                <h4>Attended: 
                    <c:if test="${requestScope.ses.attanded}">
                        <div style="color: green; display: inline;">Yes</div>
                    </c:if>
                    <c:if test="${!requestScope.ses.attanded}">
                        <div style="color: red; display: inline;">No</div>
                    </c:if></h4><br/>
            </div>
            <div class="col-md-12">
                <form action="AttendanceController" method="POST">
                    <input type="hidden" name="sesid" value="${param.id}"/>
                    <table style="width: 100%">
                        <thead style="background-color: #6B90DA;">
                            <th class="th">No</th>
                            <th class="th">Student ID</th>
                            <th class="th">Image</th>
                            <th class="th">Full Name</th>
                            <th class="th">Present</th>
                            <th class="th">Absent</th>
                            <th class="th">Description</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.ses.atts}" var="a" varStatus="loop">
                                <tr>
                                    <td class="td-main">${loop.index+1}</td>
                                    <td class="td-main">${a.student.id}
                                        <input type="hidden" name="stdid" value="${a.student.id}"/>
                                    </td>
                                    <td style="border: 1px solid ; padding: auto;">
                                        <center>
                                            <img src="http://www.fao.org/fileadmin/templates/experts-feed-safety/images/profile-img03.jpg" alt="HE153140" style="height:146px;width:111px;border-width:0px;">
                                        </center>
                                    </td>
                                    <td class="td-main">${a.student.name}</td>
                                    <td class="td-main"><input type="radio"
                                        <c:if test="${a.present}">
                                               checked="checked"
                                        </c:if>
                                               name="present${a.student.id}" value="present" /></td>
                                    <td class="td-main"><input type="radio"
                                        <c:if test="${!a.present}">
                                               checked="checked"
                                        </c:if>
                                               name="present${a.student.id}" value="absent" /></td>
                                    <td style="height: 100px; border: 1px solid; padding-left: 20px; width: 250px"><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                                </tr>   
                            </c:forEach>
                        </tbody>
                    </table>
                    <br/>
                    <br/>
                    <div class="d-flex justify-content-center">
                        <input style="background-color: #6B90DA; padding: 10px" type="submit" value="Save"/>
                    </div>
                </form>
            </div>
        </div>
        <br/>
        <br/>
        <div class="footer" style="padding:10px; border-top: 1px solid;">
            <strong>Mọi góp ý, thắc mắc xin liên hệ: </strong>
            <p>Phòng dịch vụ sinh viên: Email: dichvusinhvien@fe.edu.vn. Điện thoại: (024)7308.13.13</p>
        </div>
    </body>
</html>
