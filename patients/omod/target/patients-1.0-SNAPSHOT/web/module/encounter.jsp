<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>


<openmrs:htmlInclude file="/moduleResources/patients/jquery/jquery.js" />
<openmrs:htmlInclude file="/moduleResources/patients/css/dataTables.css" />
<openmrs:htmlInclude file="/moduleResources/patients/js/jquery.dataTables.min.js" />
<openmrs:htmlInclude file="/moduleResources/patients/js/jquery.dataTables.js" />
<script type="text/javascript">
    var $j = jQuery.noConflict();
</script>

<p>Hello ${user.systemId}!</p>



<script type="text/javascript">
    $j(document).ready(function() {
        $j('#myTable').dataTable({
            bJQueryUI:true,
            bAutoWidth: true,
            sPaginationType: "full_numbers"
        });

    } );
</script>
<table id="myTable">
    <thead>
    <tr>
        <th>Encounter Name</th>
        <th>Description</th>
        <th>Location</th>
        <%--<th>Time</th>--%>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="encounters" items="${encounters}" varStatus="status">
        <%--<td><a href="manage.form?patientId=${encounters.patientId}" >${encounters.encounterType.name}</a></td>--%>
        <tr>
            <td>${encounters.encounterType.name}</td>
            <td>${encounters.encounte.description}</td>
            <td>${encounters.location}</td>
            <%--<td>${encounters.encounterType.time}</td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>



<%@ include file="/WEB-INF/template/footer.jsp"%>