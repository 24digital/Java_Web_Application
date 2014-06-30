<%--
  Created by IntelliJ IDEA.
  User: Marion
  Date: 6/30/2014
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="todoApp">
<head>
    <title>TO DO List</title>
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-theme.css" rel="stylesheet" />
    <script src="angular.js"></script>
    <script>
        var model = {
            user: "Adam",
            items: [{ action: "Buy Flowers", done: false },
                { action: "Get Shoes", done: false },
                { action: "Collect Tickets", done: true },
                { action: "Call Joe", done: false }]
        };

        var todoApp = angular.module("todoApp", []);

        todoApp.controller("ToDoCtrl", function ($scope) {
            $scope.todo = model;
        });

    </script>
</head>
<body ng-controller="ToDoCtrl">
<div class="page-header">
    <h1>To Do List</h1>
</div>
<div class="panel">
    <div class="input-group">
        <input class="form-control" />
            <span class="input-group-btn">
                <button class="btn btn-default">Add</button>
            </span>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Description</th>
            <th>Done</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>
</body>
</html>

