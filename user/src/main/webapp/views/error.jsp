<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <h1>404</h1>
    <p> Something Went Wrong.....  ${pageContext.errorData.throwable.message}</p>
</body>
</html>