<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<%--<p>Hello ${user.systemId}!</p>--%>
<%--<openmrs:htmlInclude file=""/>--%>
<%--<script>--%>
    <%--$j(document).ready(function() {--%>
    <%--$j("patient_details_table").datatable({--%>
        <%--bJQuertUI:true,--%>
        <%--bAutoWidth: true,--%>
        <%--sPaginationType: "full_numbers"--%>
    <%--});--%>
    <%--});--%>
<%--</script>--%>

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
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Identifier</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="patient" items="${patients}" varStatus="status">
    <td><a href="encounter.form?patientId=${patient.patientId}" >${patient.personName.fullName}</a></td>
        <tr>
            <td>${patient.givenName}</td>
            <td>${patient.age}</td>
            <td>${patient.gender}</td>
            <td>${patient.identifiers}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp"%>