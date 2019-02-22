<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<script type="text/javascript" src="./JS/registration.js"></script>
</head>
<body>
	<form name="registration" action="RegisterServlet" method="post" onSubmit="return validLogin();">
	<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>	
		<tr>
			<td colspan=2 align='center'><h1>Registration</h1></td>
		</tr>
		<tr>
		    <td align='center'><input type="radio" name="etype" value="manager"> Manager</td>
		    <td align='center'><input type="radio" name="etype" value="worker"> Worker</td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Name:</td>
		    <td><input type='text' name='firstname' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Last Name:</td>
		    <td><input type='text' name='lastname' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Date Of Birth:</td>
		    <td><input type='date' name='dob' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'><input type="radio" name="gender" value="male"> Male</td>
		    <td align='left'><input type="radio" name="gender" value="female"> Female</td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>User name:</td>
		    <td><input type='text' name='uname' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Password:</td>
		    <td><input type='password' name='pwd' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Confirm Password:</td>
		    <td><input type='password' name='cpwd' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Phone:</td>
		    <td><input type='text' name='phone' required></span id=phoneSpan></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>Email:</td>
		    <td><input type='text' name='email' required></span id=emailSpan></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>
		    <select name="s_que1">
		    	<option>What is your first phone number?</option>
		    	<option>What is the name of your first school?</option>
		    	<option>where are you born?</option>
		    </select>
		    </td>
		    <td><input type='text' name='ans1' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>
		    <select name="s_que2">
		    	<option>What is your first phone number?</option>
		    	<option selected>What is the name of your first school?</option>
		    	<option>where are you born?</option>
		    </select>
		    </td>
		    <td><input type='text' name='ans2' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'>
		    <select name="s_que3">
		    	<option>What is your first phone number?</option>
		    	<option>What is the name of your first school?</option>
		    	<option selected>where are you born?</option>
		    </select>
		    </td>
		    <td><input type='text' name='ans3' required></td>
		</tr>
		<tr> <td>&nbsp;</td> </tr>
		<tr>
		    <td align='center'><input type='submit' name='register' value="register"></td>
		</tr>
	</table>
	</form>
</body>
</html>