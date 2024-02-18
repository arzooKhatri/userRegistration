<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Registration</title>
    <script>
        function showMessage() {
            var message = "<%= request.getAttribute("message") %>";
            if (message) {
                alert(message);
            }
        }
    </script>
</head>
<body>
<div style="text-align: center;">
    <h1>Update Registration</h1>
    <form action="${pageContext.request.contextPath}/update/${registration.id}" method="post" onsubmit="showMessage();">
         <table style="margin: 0 auto; text-align: left;">
            <tr>
                <td><label for="full_name">Full Name:</label></td>
                <td><input type="text" id="full_name" name="full_name" value="${registration.full_name}" required title="Please enter a 6-digit numeric PIN"></td>
            </tr>
            <tr>
    <td><label>Gender:</label></td>
                <td>
                    <input type="radio" name="gender" value="Male" <c:if test="${registration.gender == 'Male'}"></c:if>Male
                    <input type="radio" name="gender" value="Female" <c:if test="${registration.gender == 'Female'}"></c:if>Female
                    <input type="radio" name="gender" value="Other" <c:if test="${registration.gender == 'Other'}"></c:if>Other
                </td>

            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea id="address" name="address" required>${registration.address}</textarea></td>
            </tr>
            <tr>
                <td><label for="city">City:</label></td>
                <td><input type="text" id="city" name="city" value="${registration.city}" required></td>
            </tr>
           <tr>
			    <td><label for="pin">Pin:</label></td>
			    <td><input type="tel" id="pin" name="pin" value="${registration.pin}" pattern="[0-9]{6}" minlength="6" maxlength="6" required></td>
			</tr>
            <tr>
                <td><label for="state">State:</label></td>
                <td><input type="text" id="state" name="state" value="${registration.state}" required></td>
            </tr>
            <tr>
               <td><label for="country">Country:</label></td>
                <td>
                    <select id="country" name="country" required>
                        <option value="USA" <c:if test="${registration.country == 'USA'}"></c:if>USA</option>
                        <option value="UK" <c:if test="${registration.country == 'UK'}"></c:if>UK</option>
                        <option value="INDIA" <c:if test="${registration.country == 'INDIA'}"></c:if>INDIA</option>
                        <option value="UAE" <c:if test="${registration.country == 'UAE'}"></c:if>UAE</option>
                    </select>
                </td>

            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" value="${registration.email}" required></td>
            </tr>
            <tr>
                <td><label for="contact">Contact:</label></td>
                <td><input type="tel" id="contact" name="contact" pattern="[0-9]{10}" value="${registration.contact}" minlength="10" maxlength="10" required title="Please enter a 10-digit numeric Contact"></td>
            </tr>
            <tr>
                <td><label for="education_qualification">Education Qualification:</label></td>
                <td><input type="text" id="education_qualification" name="education_qualification" value="${registration.education_qualification}" required></td>
            </tr>
            <tr>
                <td><label for="designation">Designation:</label></td>
                <td><input type="text" id="designation" name="designation" value="${registration.designation}" required></td>
            </tr>
        </table>
        <button type="submit">Update Registration</button>
    </form>
</div>
</body>
</html>
