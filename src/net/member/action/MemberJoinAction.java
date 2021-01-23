package net.member.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberJoinAction_execute() 호출");
		
		//한글 처리
		request.setCharacterEncoding("UTF-8");
		
		//전달되는 데이터 저장
		MemberBean mb = new MemberBean();
		
		mb.setAccount(request.getParameter("account"));
		mb.setAddress(request.getParameter("address"));
		mb.setPhone(request.getParameter("phone"));
		mb.setEmail(request.getParameter("email"));
		mb.setId(request.getParameter("id"));
		mb.setName(request.getParameter("name"));
		mb.setPass(request.getParameter("pass"));
		
		mb.setReg_date(new Timestamp(System.currentTimeMillis()));
		
		System.out.println("전달된 회원정보 저장완료!");
		System.out.println(mb);
		
		//DB처리 (DAO 객체 생성)
		MemberDAO mdao = new MemberDAO();
		
		//회원 가입 메서드
		mdao.insertMember(mb);
		
		//페이지 이동->이동정보만 저장해서 종료(값을 리턴)
		//회원가입 : /MemberJoinAction.me
		//로그인 페이지 : /MemberLogin.me
		ActionForward forward = new ActionForward();
		forward.setPath("./MemberLogin.me");
		forward.setRedirect(true);
		
		return forward;
	}

	
}
