<%@include file="../../init/initialize.jsp"%>
 <table class="table table" id="categoryTBL">
<%
    String category_code = "";
    String category_desc = "";
    String yearlvl = "";
    String semester = "";
%>
    		<thead>
    		<tr>
    			<th>Subject Code</th>
                <th>Subject Title</th>
                <th>Year Level/Semester</th>
                <th>Action</th>
    			
    		</tr>
    		</thead>
    				<tbody>
                    <%
                        querySelect = "SELECT `category_code`,`category_desc`,`year_lvl_desc`,`semester_desc` FROM `category` INNER JOIN `year_lvl` ON `category`.`year_lvl_id`=`year_lvl`.`year_lvl_id` INNER JOIN `semester` ON `category`.`category_sem_id`=`semester`.`semester_id` WHERE `category`.`markasdeleted`='0' ORDER BY `category`.`year_lvl_id`";
                        rsSelect = stmt.executeQuery(querySelect);
                        while(rsSelect.next())
                        {
                            category_code = rsSelect.getString("category_code");
                            category_desc = rsSelect.getString("category_desc");
                            yearlvl = rsSelect.getString("year_lvl_desc");
                            semester = rsSelect.getString("semester_desc");
                        
                    %>
    				<tr>	
    					<td><%=category_code%></td>	
                        <td><%=category_desc%></td> 
                        <td><%=yearlvl%>/<%=semester%></td>  
                        <td><button class="btn btn-sm btn-success" onclick="viewCat('<%=category_code%>');"><i class="fas fa-eye"></i> View Exam</button><!--  <button class="btn btn-sm btn-success" onclick="clickMe();"><i class="fas fa-edit"></i> Edit</button> --> <button class="btn btn-sm btn-success" onclick="del('<%=category_code%>');"><i class="fas fa-trash-alt"></i> Delete</button></td>     
    				</tr>   
                    <%
                        }
                    %>
    				</tbody>

    </table><br>
                        <button class="btn btn-success btn-md btn-fill" onclick="addCategory()"><i class="fas fa-plus"></i> Add Category</button>

<script type="text/javascript">
$(document).ready(function() {
    $('#categoryTBL').DataTable({
        initComplete: function () 
        {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        },

         "ordering": false,
         pageLength : 10,
         lengthMenu: [[10, 20, -1], [10, 20, 50]]
    } );
} );
</script>
<div id="thisscript"></div>     