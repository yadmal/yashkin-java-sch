<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Starter Template for Bootstrap 4.1.1</title>
    <link rel="shortcut icon" href="">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap-theme.min.css">--%>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-grid.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-reboot.min.css"/> ">
    <style>
        body {
            padding-top: 50px;
        }

        .starter-template {
            padding: 40px 15px;
            text-align: center;
        }
    </style>
    <!--[if IE]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="bg-dark border-secondary">

<jsp:include page="administratorHeaderInclude.jsp"></jsp:include>

<div class="p-0 bg-secondary">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-dark text-center text-uppercase">add new tariff</h1>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6 py-1">
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputName">Title</label>
                            <input type="text" class="form-control" id="inputName" placeholder="Title"></div>
                        <div class="form-group col-md-6">
                            <label for="inputSurname">Description</label>
                            <input type="text" class="form-control" id="inputSurname" placeholder="Description"></div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputConnectionCost">Connection cost</label>
                            <input type="number" class="form-control" id="inputConnectionCost"
                                   placeholder="Connection cost"></div>
                        <div class="form-group col-md-6">
                            <label for="inputPprice">Price</label>
                            <input type="number" class="form-control" id="inputPprice" placeholder="Price"></div>
                    </div>
                    <div class="form-group form-row">
                        <label class="col-sm-2 col-form-label">Connecned options</label>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                <label class="form-check-label" for="defaultCheck1"> Option 1 </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" disabled="">
                                <label class="form-check-label" for="defaultCheck2"> Option 2 </label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn text-center text-uppercase btn-block btn-success">save</button>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="administratorFooterInclude.jsp"></jsp:include>

</body>

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>--%>

<script src="<c:url value="/resources/js/jquery-3.3.1.min.map"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

</html>