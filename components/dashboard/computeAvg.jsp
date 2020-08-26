<%
  String score1 = "";
      querySelect = "SELECT `score` FROM `user_category` WHERE `markasdeleted`='0' AND `category_field`= 'Programmer' AND`user_id`='"+session_user_id+"'";
      rsSelect = stmt.executeQuery(querySelect);
      while(rsSelect.next())
      {
        score1 = rsSelect.getString("score");
        String[] programmerScore = score1.split(",");

        for(int i=0; i<prgrammerScore.length;i++)
        {
        out.println(programmerScore[i]);
        }

      }


        queryAction = "UPDATE `user_avg` SET `score_avg`='"+score1+"' WHERE `user_id`= '"+session_user_id+"'";
        rsAction = stmt.executeUpdate(queryAction);
          if(rsAction>0) 
          {

          }
%>