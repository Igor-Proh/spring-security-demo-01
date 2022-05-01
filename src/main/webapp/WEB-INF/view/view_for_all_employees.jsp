<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h2>Information for all employees</h2>


<br><br>
<security:authorize access="hasRole('HR')">

<input type="button" value="Salary"
       onclick="window.location.href = 'hr_info'">
Only for HR staff
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
<br><br>
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for Managers staff
<br><br>
</security:authorize>

</body>
</html>