package kr.co.gdu;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

/**
 * Servlet implementation class M_update
 */
public class M_update extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String account = request.getParameter("account");
		

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("id", id);
		map.put("password", password);
		map.put("account", account);
		System.out.println(map);
		
		//DB에 연결하기
		DBCon con = new DBCon();
		SqlSessionFactory sqlSessionFactory = con.getCon();
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("mem.insertMember", map);
		System.out.println(cnt);
		
		
		// Board리스트
		if (cnt == 1) {
			List<HashMap<String, Object>> list = session.selectList("mem.selectMember",map);
			request.setAttribute("list", list);
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
			
		} else {

		}
		
	}

}
