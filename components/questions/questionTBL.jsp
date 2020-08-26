<%@include file="../../init/initialize.jsp"%>
<%
    String question_desc = "";
    String categories = "";
    String question_id = "";
%>
 <table class="table table" id="questionTBL">

    		<thead>
    		<tr>
    			<th>Question</th>
                <th>Category</th>
                <th>Action</th>
    			
    		</tr>
    		</thead>
    				<tbody>
                    <%
                        querySelect = "SELECT `question_id`,`question_desc`,CONCAT(`category_code`,'-',`category_desc`)as `categories` FROM `questions` INNER JOIN `category` ON `questions`.`category_id`=`category`.`category_id` WHERE `questions`.`markasdeleted`='0'";
                        rsSelect = stmt.executeQuery(querySelect);
                        while(rsSelect.next())
                        {
                            question_desc = rsSelect.getString("question_desc");
                            categories = rsSelect.getString("categories");
                            question_id = rsSelect.getString("question_id");
                    %>
    				<tr>	
    					<td><%=question_desc%></td>	
                        <td><%=categories%></td>  
                        <td><button class="btn btn-sm btn-success" onclick="viewQuestion('<%=question_id%>')"><i class="fas fa-eye"></i> View Question</button> <!-- <button class="btn btn-sm btn-success" onclick="clickMe()"><i class="fas fa-edit"></i> Edit</button> --> <button class="btn btn-sm btn-success" onclick="del('<%=question_id%>')"><i class="fas fa-trash-alt"></i> Delete</button></td>     
    				</tr>
                    <%
                        }
                    %>
    				</tbody>

    </table><br>
                        <button class="btn btn-success btn-fill btn-md" onclick="addQstn()"><i class="fas fa-plus"></i> Create Question</button>

<script type="text/javascript">
$(document).ready(function() {
    $('#questionTBL').DataTable({
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
         lengthMenu: [[5, 10, 20, -1], [5, 10, 20, 50]]
    } );
} );
</script>
<div id="thisscript"></div>     