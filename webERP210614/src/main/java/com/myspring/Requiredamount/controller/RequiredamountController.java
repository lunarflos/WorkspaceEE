package com.myspring.Requiredamount.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface RequiredamountController {

	ModelAndView mrpList(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
