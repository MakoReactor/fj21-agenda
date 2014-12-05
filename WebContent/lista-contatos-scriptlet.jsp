<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="java.util.*, 
	java.text.SimpleDateFormat,
	br.com.caelum.agenda.dao.*, 
	br.com.caelum.agenda.modelo.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr bgcolor="gray">
			<td>Nome</td>
			<td>Email</td>
			<td>Endereco</td>
			<td>Data de Nascimento</td>
		</tr>
		<%
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=sdf.format(contato.getDataNascimento().getTime())%></td>


		</tr>
		<%
			}
		%>


	</table>

</body>
</html>