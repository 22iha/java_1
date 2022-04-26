<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String _age = request.getParameter("age");
	
	int age;
	if(_age != ""){
		age = Integer.parseInt(_age);
	}else{
		age = 0;
	}
	
	//別の方法
	// 	if (age == "" ){
	// 		age = "0";
	// 	}
	// 	int xage = Integer.parseInt(age);

	//String bloodType = request.getParameter("bloodType");

    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p>
    <%
    if(name==""){
    	out.println("こんにちは、名無しさん！");
    }else if (name=="ロボット") {
   		out.println("こんにちは、ロボットさん！私と同じ名前ですね！");
    }else{
   		out.println("こんにちは、"+name+"さん！");
    }
    
    %>
    </p>
    
    <p>
    	<%
	    if (age==20) {
	   		out.println("私と同い年なんですね！");
		}else if (age<20) {
	   		out.println("私よりも"+(20-age)+"歳年下ですね。");
		}else if (age>20) {
	   		out.println("私よりも"+(age-20)+"歳年上ですね。");
		}else {
			out.println("0");
		}
		%>
	</p>
    <p>

    </p>

  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>