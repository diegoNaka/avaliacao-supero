
<%@page import="model.Agenda"%>
<%@page import="java.util.List"%>


<%
	if (request.getAttribute("listaAgenda") != null && request.getAttribute("msgErro") == null) {
		List<Agenda> agenda = (List<Agenda>) request.getAttribute("listaAgenda");
%>
<div class="form-group col-md-6 mb-2">
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Procedimento</th>
				<th scope="col">Sexo</th>
				<th scope="col">Idade</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < agenda.size(); i++) {
			%>
			<tr>
				<td>
					<%
						out.print(agenda.get(i).getProcedimento().getNumero());
					%>
				</td>

				<%
					
				%>

				<td>
					<%
						out.print(agenda.get(i).getSexo());
					%>
				</td>

				<%
					
				%>

				<td>
					<%
						out.print(agenda.get(i).getIdade());
					%>
				</td>
			</tr>
		</tbody>
		<%
			}
		%>
	</table>
</div>
<%
	}
%>
