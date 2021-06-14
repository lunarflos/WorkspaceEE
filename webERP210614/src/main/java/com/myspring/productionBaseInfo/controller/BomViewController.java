package com.myspring.productionBaseInfo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspring.productionBaseInfo.BOM.vo.bomVO;
public interface BomViewController {
	public ModelAndView viewBOM(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addMember(@ModelAttribute("bom") bomVO bomVO,HttpServletRequest request, HttpServletResponse response) throws Exception;
	/*public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView login(@ModelAttribute("member") bomVO member,
                              RedirectAttributes rAttr,
                              HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception; 
*/

	public ModelAndView delMember(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView updateMember(@ModelAttribute("bom") bomVO bomVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView rightbom(HttpServletRequest request, HttpServletResponse response) throws Exception;
	


}