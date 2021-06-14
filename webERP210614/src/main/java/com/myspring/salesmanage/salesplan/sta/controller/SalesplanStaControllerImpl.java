//package com.myspring.salesmanage.salesplan.sta.controller;
//
//import java.sql.Date;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.EnableAspectJAutoProxy;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import com.myspring.salesmanage.salesplan.sta.service.SalesplanStaService;
//import com.myspring.salesmanage.salesplan.vo.SalesplanVO;
//
//@Controller("salesplanStaController")
////@EnavleAspectJAutoProxy
//public class SalesplanStaControllerImpl implements SalesplanStaController {
//
//	private static final Logger logger = LoggerFactory.getLogger(SalesplanStaControllerImpl.class);
//	@Autowired(required=false)
//	private SalesplanStaService salesplanService;
//	@Autowired(required=false)
//	private SalesplanVO salesplanVO;
//	
//	@Override
//	@RequestMapping(value="/member/regsalesplan.do", method= RequestMethod.GET)
//	public ModelAndView listSalesplans(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = getViewName(request);
//		System.out.println("viewName: " +viewName);
//		logger.info("viewName:" +viewName);
//		logger.debug("viewName: "+viewName);
//		List salesplansList = salesplanService.listSalesplans();
//		ModelAndView mav = new ModelAndView(viewName);
//		mav.addObject("salesplansList",salesplansList);
//		return mav;
//	}//mapper.salesplan.
//
//
//	
//	@RequestMapping(value = "/salesplan/*Form.do", method =  RequestMethod.GET)
//	private ModelAndView form(@RequestParam(value= "result", required=false) String result,
//						       HttpServletRequest request, 
//						       HttpServletResponse response) throws Exception {
//		//String viewName = getViewName(request);
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("result",result);
//		mav.setViewName(viewName);
//		return mav;
//	}
//
//	@Override
//	public ModelAndView searchCode(String Plan_Item_Code, HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//
//	@Override
//	public ModelAndView searchPlanDate(Date Plan_Date, HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//
//	@Override
//	public ModelAndView searchGroup(String Item_Group_Code, HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	private String getViewName(HttpServletRequest request)  throws Exception{
//		String contextPath = request.getContextPath();
//	String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
//	if (uri == null || uri.trim().equals("")) {
//		uri = request.getRequestURI();
//	}
//
//	int begin = 0;
//	if (!((contextPath == null) || ("".equals(contextPath)))) {
//		begin = contextPath.length();
//	}
//
//	int end;
//	if (uri.indexOf(";") != -1) {
//		end = uri.indexOf(";");
//	} else if (uri.indexOf("?") != -1) {
//		end = uri.indexOf("?");
//	} else {
//		end = uri.length();
//	}
//	String viewName = uri.substring(begin, end);
//	if (viewName.indexOf(".") != -1) {
//		viewName = viewName.substring(0, viewName.lastIndexOf("."));
//	}
//	if (viewName.lastIndexOf("/") != -1) {
//		viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
//	}
//	return viewName;
//}
//
//
//
//
//}
