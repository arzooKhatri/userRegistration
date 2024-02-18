<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
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
    <h1>Registration Form</h1>
    <form action="${pageContext.request.contextPath}/register" method="post" onsubmit="showMessage();">
         <table style="margin: 0 auto; text-align: left;">
            <tr>
                <td><label for="full_name">Full Name:</label></td>
                <td><input type="text" id="full_name" name="full_name" required></td>
            </tr>
            <tr>
                <td><label>Gender:</label></td>
                <td>
                    <input type="radio" name="gender" value="Male">Male
                    <input type="radio" name="gender" value="Female">Female
                    <input type="radio" name="gender" value="Other">Other
                </td>
            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea id="address" name="address" required></textarea></td>
            </tr>
            <tr>
                <td><label for="city">City:</label></td>
                <td><input type="text" id="city" name="city" required></td>
            </tr>
           <tr>
			    <td><label for="pin">Pin:</label></td>
			    <td><input type="tel" id="pin" name="pin" pattern="[0-9]{6}" minlength="6" maxlength="6" required title="Please enter a 6-digit numeric PIN"></td>
			</tr>

            <tr>
                <td><label for="state">State:</label></td>
                <td><input type="text" id="state" name="state" required></td>
            </tr>
            <tr>
                <td><label for="country">Country:</label></td>
                <td>
                    <select id="country" name="country" required>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                        <option value="INDIA">INDIA</option>
                        <option value="UAE">UAE</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" required></td>
            </tr>
            <tr>
                <td><label for="contact">Contact:</label></td>
                <td><input type="tel" id="contact" name="contact" pattern="[0-9]{10}" minlength="10" maxlength="10" required title="Please enter a 10-digit numeric Contact"></td>
            </tr>
            <tr>
                <td><label for="education_qualification">Education Qualification:</label></td>
                <td><input type="text" id="education_qualification" name="education_qualification" required></td>
            </tr>
            <tr>
                <td><label for="designation">Designation:</label></td>
                <td><input type="text" id="designation" name="designation" required></td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </form>
    <div style="text-align: right; padding-right: 10px;">
        <a href="${pageContext.request.contextPath}/registrations">View All Registered Users</a>
    </div>
</div>
</body>
</html>
