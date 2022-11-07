<%-- 
    Document   : timetable
    Created on : Nov 2, 2022, 11:36:18 PM
    Author     : ngoan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time table</title>
        <style>
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
            <div class="row">
                <form action="TimetableController" method="GET">
                    Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
                    <input type="hidden" name="lid" value="${param.lid}"/><br>
                    From: <input type="date" name="from" value="${requestScope.from}"/>
                    To: <input type="date" name="to" value="${requestScope.to}"/>
                    <input type="submit" value="View"/> 
                </form>
            </div>
            <br>
            <div class="row">
                <table style="width: 100%">
                    <thead style="background-color: #6B90DA;">
                        <th class="th"></th>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <th class="th">${helper.getDayNameofWeek(d)}<br/>${d}</th>
                        </c:forEach>
                    </thead>
                    <c:forEach items="${requestScope.slots}" var="slot">
                        <tr>
                            <td class="td-main"> Slot ${slot.id}</td>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <td class="td-main">
                                    <c:forEach items="${requestScope.sessions}" var="ses">
                                        <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.slot.id eq slot.id)}">
                                            <a href="AttendanceController?id=${ses.id}">${ses.group.name}<br/>-${ses.group.subject.name}</a>
                                            <br/>
                                            at ${ses.room.name}
                                            <c:if test="${ses.attanded}">
                                                <p style="color: green; margin-bottom: 1px">(Attended)</p>
                                            </c:if>
                                            <c:if test="${!ses.attanded}">
                                                <p style="color: red; margin-bottom: 1px">(Not yet)</p>
                                            </c:if>
                                                <span style="background-color: #00b300; font-size: 13px; color: white; padding: 1px 4px 3px 4px; border-radius: 5px"><b>(${slot.description})</b></span>
                                        </c:if>

                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
