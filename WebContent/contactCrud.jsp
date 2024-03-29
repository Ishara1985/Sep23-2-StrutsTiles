<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#contact {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			background-color: #ffee55;
		}
	</style>
	<title>Contact Manager - Struts2 Hibernate Example</title>
</head>
<body>

<h1>Contact Manager</h1>
<s:actionerror/>

<!-- in below 'add' action is changed to 'contact-form' -->
<s:form action="contact-form" method="post">

	<s:textfield name="contact.firstName" label="Firstname"/>
	<s:textfield name="contact.lastName" label="Lastname"/>
	<s:textfield name="contact.emailId" label="Email"/>
	<s:textfield name="contact.cellNo" label="Cell No."/>
	<s:textfield name="contact.website" label="Homepage"/>
	<s:textfield name="contact.birthDate" label="Birthdate"/>
	<s:submit value="Add Contact" align="center"/>
</s:form>


<h2>Contacts</h2>
<table id="contact" border="1">
<tr>
	<th>Name</th>
	<th>Email</th>
	<th>Cell No.</th>
	<th>Birthdate</th>
	<th>Homepage</th>
	<th>Delete</th>
</tr>
<s:iterator value="contactList" var="contact">
	<tr>
		<td><s:property value="lastName"/>, <s:property value="firstName"/> </td>
		<td><s:property value="emailId"/></td>
		<td><s:property value="cellNo"/></td>
		<td><s:property value="birthDate"/></td>
		<td><a href="<s:property value="website"/>">link</a></td>
		<td><a href="delete?id=<s:property value="id"/>">delete</a></td>
	</tr>	
</s:iterator>
</table>
</body>
</html>